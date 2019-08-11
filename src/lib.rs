#![feature(async_await)]

use tokio::fs;
use lazy_static::lazy_static;
use regex::Regex;
use snafu::{Snafu};
use notify_rust::{Notification, NotificationHandle};
use derive_more::{Display, From};

#[derive(Snafu, Debug, From)]
pub enum Error {
    #[snafu(display("Could not find active P-State"))]
    RegexFail,
    #[snafu(display("Couldn't read file: {}", source))]
    ReadError {
        source: tokio::io::Error,
    },
    #[snafu(display("Could not get CPU speed: {}", source))]
    CpuSpeed {
        source: heim::Error,
    },
    #[snafu(display("Couldn't parse GPU speed number: {}", source))]
    ParseIntError {
        source: std::num::ParseIntError,
    },
    #[snafu(display("Error displaying notification: {}", source))]
    NotificationError {
        source: notify_rust::error::Error,
    },
}

#[derive(Display, Debug, PartialEq, Eq)]
pub enum SpeedCheck {
    #[display(fmt = "All speeds are at expected values.")]
    Ok,
    #[display(fmt = "GPU speed is at incorrect value ({}MHz)!", _0)]
    GPU(usize),
    #[display(fmt = "CPU speed is at incorrect value ({}MHz)!", _0)]
    CPU(u64),
    #[display(fmt = "CPU speed ({}MHz) and GPU speed ({}MHz) are both incorrect!", cpu, gpu)]
    Both {
        cpu: u64,
        gpu: usize,
    },
}

lazy_static! {
    static ref MCLK_REGEX: Regex = Regex::new(r#"([0-9]+)Mhz \*"#).unwrap();
}

const GPU_PATH: &'static str = "/sys/class/drm/card0/device/pp_dpm_sclk";

pub async fn get_gpu_sclk() -> Result<usize, Error> {
    let dpm_buf = fs::read(GPU_PATH).await?;
    let dpm = String::from_utf8(dpm_buf).expect("Got invalid UTF-8 from sysfs"); // this should never happen
    let sclk_str = MCLK_REGEX.captures(&dpm).and_then(|caps| caps.get(1)).ok_or(Error::RegexFail)?.as_str();
    Ok(sclk_str.parse()?)
}

pub async fn check_status() -> Result<SpeedCheck, Error> {
    const EXPECTED_CPU: u64 = 650;
    const EXPECTED_GPU: usize = 1201;

    let gpu = get_gpu_sclk().await?;
    let gpu_bad = gpu != EXPECTED_GPU;

    let cpu = heim::cpu::frequency().await?.current().get() / 1_000_000;
    let cpu_bad = cpu < EXPECTED_CPU;

    Ok(match (cpu_bad, gpu_bad) {
        (false, false) => SpeedCheck::Ok,
        (true, false) => SpeedCheck::CPU(cpu),
        (false, true) => SpeedCheck::GPU(gpu),
        (true, true) => SpeedCheck::Both { cpu, gpu, },
    })
}

#[derive(Default)]
pub struct HandleWrapper(Option<NotificationHandle>);

unsafe impl Send for HandleWrapper {}

pub async fn display_bad_status(notif: &mut HandleWrapper) -> Result<SpeedCheck, Error> {
    let status = check_status().await?;

    if status != SpeedCheck::Ok {
        if let Some(handle) = &mut notif.0 {
            handle
                .summary("SpeedCheck")
                .body(&status.to_string())
                .icon("dialog-error");
            handle.update();
        } else {
            notif.0 = Some(Notification::new()
                .summary("SpeedCheck")
                .body(&status.to_string())
                .icon("dialog-error")
                .show()?
            );
        }
    } else {
        if let Some(handle) = notif.0.take() {
            handle.close();
        }
    }

    Ok(status)
}
