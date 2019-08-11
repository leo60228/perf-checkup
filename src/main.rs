#![feature(async_await)]

use perf_checkup::{Error, display_bad_status};
use std::time::Duration;
use tokio::timer::Interval;
use tokio::runtime::Runtime;

fn main() -> Result<(), Error> {
    let rt = Runtime::new().unwrap();
    rt.spawn(async move {
        let mut interval = Interval::new_interval(Duration::from_millis(2500));
        let mut handle = Default::default();
        while let Some(_) = interval.next().await {
            println!("{:?}", display_bad_status(&mut handle).await);
        }
    });
    rt.shutdown_on_idle();
    Ok(())
}
