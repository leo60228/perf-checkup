{ appendOverlays ? (import <nixpkgs> {}).appendOverlays }:

let pkgs = appendOverlays [ (import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz)) (import ./rust-nightly-overlay.nix) ];
    cargo = pkgs.callPackage ./Cargo.nix {
        cratesIO = pkgs.callPackage ./crates-io.nix {};
    }; in
cargo.perf_checkup {}
