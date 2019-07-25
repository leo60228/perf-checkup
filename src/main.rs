#![feature(async_await)]

use perf_checkup::{Error, display_bad_status};
use runtime::time::Interval;
use std::time::Duration;
use futures::prelude::*;

#[runtime::main]
async fn main() -> Result<(), Error> {
    let mut interval = Interval::new(Duration::from_millis(2500));
    let mut handle = Default::default();
    while let Some(_) = interval.next().await {
        println!("{:?}", display_bad_status(&mut handle).await);
    }
    Ok(())
}
