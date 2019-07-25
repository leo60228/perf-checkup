{ lib, buildRustCrate, buildRustCrateHelpers }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {

# aho-corasick-0.7.4

  crates.aho_corasick."0.7.4" = deps: { features?(features_.aho_corasick."0.7.4" deps {}) }: buildRustCrate {
    crateName = "aho-corasick";
    version = "0.7.4";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1njpvqirz7rpbc7w07a5w5fk294w23zks28d89g46mr57j6pffy5";
    libName = "aho_corasick";
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."aho_corasick"."0.7.4"."memchr"}" deps)
    ]);
    features = mkFeatures (features."aho_corasick"."0.7.4" or {});
  };
  features_.aho_corasick."0.7.4" = deps: f: updateFeatures f (rec {
    aho_corasick = fold recursiveUpdate {} [
      { "0.7.4".default = (f.aho_corasick."0.7.4".default or true); }
      { "0.7.4".std =
        (f.aho_corasick."0.7.4".std or false) ||
        (f.aho_corasick."0.7.4".default or false) ||
        (aho_corasick."0.7.4"."default" or false); }
    ];
    memchr = fold recursiveUpdate {} [
      { "${deps.aho_corasick."0.7.4".memchr}"."use_std" =
        (f.memchr."${deps.aho_corasick."0.7.4".memchr}"."use_std" or false) ||
        (aho_corasick."0.7.4"."std" or false) ||
        (f."aho_corasick"."0.7.4"."std" or false); }
      { "${deps.aho_corasick."0.7.4".memchr}".default = (f.memchr."${deps.aho_corasick."0.7.4".memchr}".default or false); }
    ];
  }) [
    (features_.memchr."${deps."aho_corasick"."0.7.4"."memchr"}" deps)
  ];


# end
# argon2rs-0.2.5

  crates.argon2rs."0.2.5" = deps: { features?(features_.argon2rs."0.2.5" deps {}) }: buildRustCrate {
    crateName = "argon2rs";
    version = "0.2.5";
    authors = [ "bryant <bryant@defrag.in>" ];
    sha256 = "1byl9b3wwyrarn8qack21v5fi2qsnn3y5clvikk2apskhmnih1rw";
    dependencies = mapFeatures features ([
      (crates."blake2_rfc"."${deps."argon2rs"."0.2.5"."blake2_rfc"}" deps)
      (crates."scoped_threadpool"."${deps."argon2rs"."0.2.5"."scoped_threadpool"}" deps)
    ]);
    features = mkFeatures (features."argon2rs"."0.2.5" or {});
  };
  features_.argon2rs."0.2.5" = deps: f: updateFeatures f (rec {
    argon2rs."0.2.5".default = (f.argon2rs."0.2.5".default or true);
    blake2_rfc = fold recursiveUpdate {} [
      { "${deps.argon2rs."0.2.5".blake2_rfc}"."simd_asm" =
        (f.blake2_rfc."${deps.argon2rs."0.2.5".blake2_rfc}"."simd_asm" or false) ||
        (argon2rs."0.2.5"."simd" or false) ||
        (f."argon2rs"."0.2.5"."simd" or false); }
      { "${deps.argon2rs."0.2.5".blake2_rfc}".default = true; }
    ];
    scoped_threadpool."${deps.argon2rs."0.2.5".scoped_threadpool}".default = true;
  }) [
    (features_.blake2_rfc."${deps."argon2rs"."0.2.5"."blake2_rfc"}" deps)
    (features_.scoped_threadpool."${deps."argon2rs"."0.2.5"."scoped_threadpool"}" deps)
  ];


# end
# arrayvec-0.4.11

  crates.arrayvec."0.4.11" = deps: { features?(features_.arrayvec."0.4.11" deps {}) }: buildRustCrate {
    crateName = "arrayvec";
    version = "0.4.11";
    authors = [ "bluss" ];
    sha256 = "1bd08rakkyr9jlf538cs80s3ly464ni3afr63zlw860ndar1zfmv";
    dependencies = mapFeatures features ([
      (crates."nodrop"."${deps."arrayvec"."0.4.11"."nodrop"}" deps)
    ]);
    features = mkFeatures (features."arrayvec"."0.4.11" or {});
  };
  features_.arrayvec."0.4.11" = deps: f: updateFeatures f (rec {
    arrayvec = fold recursiveUpdate {} [
      { "0.4.11".default = (f.arrayvec."0.4.11".default or true); }
      { "0.4.11".serde =
        (f.arrayvec."0.4.11".serde or false) ||
        (f.arrayvec."0.4.11".serde-1 or false) ||
        (arrayvec."0.4.11"."serde-1" or false); }
      { "0.4.11".std =
        (f.arrayvec."0.4.11".std or false) ||
        (f.arrayvec."0.4.11".default or false) ||
        (arrayvec."0.4.11"."default" or false); }
    ];
    nodrop."${deps.arrayvec."0.4.11".nodrop}".default = (f.nodrop."${deps.arrayvec."0.4.11".nodrop}".default or false);
  }) [
    (features_.nodrop."${deps."arrayvec"."0.4.11"."nodrop"}" deps)
  ];


# end
# async-datagram-2.2.0

  crates.async_datagram."2.2.0" = deps: { features?(features_.async_datagram."2.2.0" deps {}) }: buildRustCrate {
    crateName = "async-datagram";
    version = "2.2.0";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "1g9kw8zkm2d0phlam2kh40xbp91hlzf8gdjpjjs39xyh2j0fr5kv";
  };
  features_.async_datagram."2.2.0" = deps: f: updateFeatures f (rec {
    async_datagram."2.2.0".default = (f.async_datagram."2.2.0".default or true);
  }) [];


# end
# async-datagram-3.0.0

  crates.async_datagram."3.0.0" = deps: { features?(features_.async_datagram."3.0.0" deps {}) }: buildRustCrate {
    crateName = "async-datagram";
    version = "3.0.0";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "1prk687acf4nf347lw10bjj8rfvlm0q2b9dkifb3xpqrcynapn7d";
  };
  features_.async_datagram."3.0.0" = deps: f: updateFeatures f (rec {
    async_datagram."3.0.0".default = (f.async_datagram."3.0.0".default or true);
  }) [];


# end
# async-ready-3.0.0

  crates.async_ready."3.0.0" = deps: { features?(features_.async_ready."3.0.0" deps {}) }: buildRustCrate {
    crateName = "async-ready";
    version = "3.0.0";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "068svms8rdp0cnwhnm8kl1b7s31csq5awif5zvqrqcgz037q4si5";
  };
  features_.async_ready."3.0.0" = deps: f: updateFeatures f (rec {
    async_ready."3.0.0".default = (f.async_ready."3.0.0".default or true);
  }) [];


# end
# autocfg-0.1.5

  crates.autocfg."0.1.5" = deps: { features?(features_.autocfg."0.1.5" deps {}) }: buildRustCrate {
    crateName = "autocfg";
    version = "0.1.5";
    authors = [ "Josh Stone <cuviper@gmail.com>" ];
    sha256 = "1f3bj604fyr4xh08r357hs3hpdzapiqgccvmj1jpi953ffqrp09a";
  };
  features_.autocfg."0.1.5" = deps: f: updateFeatures f (rec {
    autocfg."0.1.5".default = (f.autocfg."0.1.5".default or true);
  }) [];


# end
# backtrace-0.3.33

  crates.backtrace."0.3.33" = deps: { features?(features_.backtrace."0.3.33" deps {}) }: buildRustCrate {
    crateName = "backtrace";
    version = "0.3.33";
    authors = [ "The Rust Project Developers" ];
    edition = "2018";
    sha256 = "1fkzblhr16hix22sdb22n41l98lrqch86zzpvralh1n83q8qjw98";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."backtrace"."0.3.33"."cfg_if"}" deps)
      (crates."libc"."${deps."backtrace"."0.3.33"."libc"}" deps)
      (crates."rustc_demangle"."${deps."backtrace"."0.3.33"."rustc_demangle"}" deps)
    ]
      ++ (if features.backtrace."0.3.33".backtrace-sys or false then [ (crates.backtrace_sys."${deps."backtrace"."0.3.33".backtrace_sys}" deps) ] else []))
      ++ (if !(kernel == "darwin" || kernel == "windows") then mapFeatures features ([
]) else [])
      ++ (if kernel == "darwin" then mapFeatures features ([
]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
]) else []);
    features = mkFeatures (features."backtrace"."0.3.33" or {});
  };
  features_.backtrace."0.3.33" = deps: f: updateFeatures f (rec {
    backtrace = fold recursiveUpdate {} [
      { "0.3.33".addr2line =
        (f.backtrace."0.3.33".addr2line or false) ||
        (f.backtrace."0.3.33".gimli-symbolize or false) ||
        (backtrace."0.3.33"."gimli-symbolize" or false); }
      { "0.3.33".backtrace-sys =
        (f.backtrace."0.3.33".backtrace-sys or false) ||
        (f.backtrace."0.3.33".libbacktrace or false) ||
        (backtrace."0.3.33"."libbacktrace" or false); }
      { "0.3.33".compiler_builtins =
        (f.backtrace."0.3.33".compiler_builtins or false) ||
        (f.backtrace."0.3.33".rustc-dep-of-std or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false); }
      { "0.3.33".core =
        (f.backtrace."0.3.33".core or false) ||
        (f.backtrace."0.3.33".rustc-dep-of-std or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false); }
      { "0.3.33".dbghelp =
        (f.backtrace."0.3.33".dbghelp or false) ||
        (f.backtrace."0.3.33".default or false) ||
        (backtrace."0.3.33"."default" or false); }
      { "0.3.33".default = (f.backtrace."0.3.33".default or true); }
      { "0.3.33".dladdr =
        (f.backtrace."0.3.33".dladdr or false) ||
        (f.backtrace."0.3.33".default or false) ||
        (backtrace."0.3.33"."default" or false); }
      { "0.3.33".findshlibs =
        (f.backtrace."0.3.33".findshlibs or false) ||
        (f.backtrace."0.3.33".gimli-symbolize or false) ||
        (backtrace."0.3.33"."gimli-symbolize" or false); }
      { "0.3.33".goblin =
        (f.backtrace."0.3.33".goblin or false) ||
        (f.backtrace."0.3.33".gimli-symbolize or false) ||
        (backtrace."0.3.33"."gimli-symbolize" or false); }
      { "0.3.33".libbacktrace =
        (f.backtrace."0.3.33".libbacktrace or false) ||
        (f.backtrace."0.3.33".default or false) ||
        (backtrace."0.3.33"."default" or false); }
      { "0.3.33".libunwind =
        (f.backtrace."0.3.33".libunwind or false) ||
        (f.backtrace."0.3.33".default or false) ||
        (backtrace."0.3.33"."default" or false); }
      { "0.3.33".memmap =
        (f.backtrace."0.3.33".memmap or false) ||
        (f.backtrace."0.3.33".gimli-symbolize or false) ||
        (backtrace."0.3.33"."gimli-symbolize" or false); }
      { "0.3.33".rustc-serialize =
        (f.backtrace."0.3.33".rustc-serialize or false) ||
        (f.backtrace."0.3.33".serialize-rustc or false) ||
        (backtrace."0.3.33"."serialize-rustc" or false); }
      { "0.3.33".serde =
        (f.backtrace."0.3.33".serde or false) ||
        (f.backtrace."0.3.33".serialize-serde or false) ||
        (backtrace."0.3.33"."serialize-serde" or false); }
      { "0.3.33".std =
        (f.backtrace."0.3.33".std or false) ||
        (f.backtrace."0.3.33".default or false) ||
        (backtrace."0.3.33"."default" or false); }
    ];
    backtrace_sys = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.33".backtrace_sys}"."rustc-dep-of-std" =
        (f.backtrace_sys."${deps.backtrace."0.3.33".backtrace_sys}"."rustc-dep-of-std" or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false) ||
        (f."backtrace"."0.3.33"."rustc-dep-of-std" or false); }
      { "${deps.backtrace."0.3.33".backtrace_sys}".default = true; }
    ];
    cfg_if = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.33".cfg_if}"."rustc-dep-of-std" =
        (f.cfg_if."${deps.backtrace."0.3.33".cfg_if}"."rustc-dep-of-std" or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false) ||
        (f."backtrace"."0.3.33"."rustc-dep-of-std" or false); }
      { "${deps.backtrace."0.3.33".cfg_if}".default = true; }
    ];
    libc = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.33".libc}"."rustc-dep-of-std" =
        (f.libc."${deps.backtrace."0.3.33".libc}"."rustc-dep-of-std" or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false) ||
        (f."backtrace"."0.3.33"."rustc-dep-of-std" or false); }
      { "${deps.backtrace."0.3.33".libc}".default = (f.libc."${deps.backtrace."0.3.33".libc}".default or false); }
    ];
    rustc_demangle = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.33".rustc_demangle}"."rustc-dep-of-std" =
        (f.rustc_demangle."${deps.backtrace."0.3.33".rustc_demangle}"."rustc-dep-of-std" or false) ||
        (backtrace."0.3.33"."rustc-dep-of-std" or false) ||
        (f."backtrace"."0.3.33"."rustc-dep-of-std" or false); }
      { "${deps.backtrace."0.3.33".rustc_demangle}".default = true; }
    ];
  }) [
    (features_.backtrace_sys."${deps."backtrace"."0.3.33"."backtrace_sys"}" deps)
    (features_.cfg_if."${deps."backtrace"."0.3.33"."cfg_if"}" deps)
    (features_.libc."${deps."backtrace"."0.3.33"."libc"}" deps)
    (features_.rustc_demangle."${deps."backtrace"."0.3.33"."rustc_demangle"}" deps)
  ];


# end
# backtrace-sys-0.1.31

  crates.backtrace_sys."0.1.31" = deps: { features?(features_.backtrace_sys."0.1.31" deps {}) }: buildRustCrate {
    crateName = "backtrace-sys";
    version = "0.1.31";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1gv41cypl4y5r32za4gx2fks43d76sp1r3yb5524i4gs50lrkypv";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."backtrace_sys"."0.1.31"."libc"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."backtrace_sys"."0.1.31"."cc"}" deps)
    ]);
    features = mkFeatures (features."backtrace_sys"."0.1.31" or {});
  };
  features_.backtrace_sys."0.1.31" = deps: f: updateFeatures f (rec {
    backtrace_sys = fold recursiveUpdate {} [
      { "0.1.31".compiler_builtins =
        (f.backtrace_sys."0.1.31".compiler_builtins or false) ||
        (f.backtrace_sys."0.1.31".rustc-dep-of-std or false) ||
        (backtrace_sys."0.1.31"."rustc-dep-of-std" or false); }
      { "0.1.31".core =
        (f.backtrace_sys."0.1.31".core or false) ||
        (f.backtrace_sys."0.1.31".rustc-dep-of-std or false) ||
        (backtrace_sys."0.1.31"."rustc-dep-of-std" or false); }
      { "0.1.31".default = (f.backtrace_sys."0.1.31".default or true); }
    ];
    cc."${deps.backtrace_sys."0.1.31".cc}".default = true;
    libc."${deps.backtrace_sys."0.1.31".libc}".default = (f.libc."${deps.backtrace_sys."0.1.31".libc}".default or false);
  }) [
    (features_.libc."${deps."backtrace_sys"."0.1.31"."libc"}" deps)
    (features_.cc."${deps."backtrace_sys"."0.1.31"."cc"}" deps)
  ];


# end
# bitflags-1.1.0

  crates.bitflags."1.1.0" = deps: { features?(features_.bitflags."1.1.0" deps {}) }: buildRustCrate {
    crateName = "bitflags";
    version = "1.1.0";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1iwa4jrqcf4lnbwl562a3lx3r0jkh1j88b219bsqvbm4sni67dyv";
    build = "build.rs";
    features = mkFeatures (features."bitflags"."1.1.0" or {});
  };
  features_.bitflags."1.1.0" = deps: f: updateFeatures f (rec {
    bitflags."1.1.0".default = (f.bitflags."1.1.0".default or true);
  }) [];


# end
# blake2-rfc-0.2.18

  crates.blake2_rfc."0.2.18" = deps: { features?(features_.blake2_rfc."0.2.18" deps {}) }: buildRustCrate {
    crateName = "blake2-rfc";
    version = "0.2.18";
    authors = [ "Cesar Eduardo Barros <cesarb@cesarb.eti.br>" ];
    sha256 = "0pyqrik4471ljk16prs0iwb2sam39z0z6axyyjxlqxdmf4wprf0l";
    dependencies = mapFeatures features ([
      (crates."arrayvec"."${deps."blake2_rfc"."0.2.18"."arrayvec"}" deps)
      (crates."constant_time_eq"."${deps."blake2_rfc"."0.2.18"."constant_time_eq"}" deps)
    ]);
    features = mkFeatures (features."blake2_rfc"."0.2.18" or {});
  };
  features_.blake2_rfc."0.2.18" = deps: f: updateFeatures f (rec {
    arrayvec."${deps.blake2_rfc."0.2.18".arrayvec}".default = (f.arrayvec."${deps.blake2_rfc."0.2.18".arrayvec}".default or false);
    blake2_rfc = fold recursiveUpdate {} [
      { "0.2.18".default = (f.blake2_rfc."0.2.18".default or true); }
      { "0.2.18".simd =
        (f.blake2_rfc."0.2.18".simd or false) ||
        (f.blake2_rfc."0.2.18".simd_opt or false) ||
        (blake2_rfc."0.2.18"."simd_opt" or false); }
      { "0.2.18".simd_opt =
        (f.blake2_rfc."0.2.18".simd_opt or false) ||
        (f.blake2_rfc."0.2.18".simd_asm or false) ||
        (blake2_rfc."0.2.18"."simd_asm" or false); }
      { "0.2.18".std =
        (f.blake2_rfc."0.2.18".std or false) ||
        (f.blake2_rfc."0.2.18".default or false) ||
        (blake2_rfc."0.2.18"."default" or false); }
    ];
    constant_time_eq."${deps.blake2_rfc."0.2.18".constant_time_eq}".default = true;
  }) [
    (features_.arrayvec."${deps."blake2_rfc"."0.2.18"."arrayvec"}" deps)
    (features_.constant_time_eq."${deps."blake2_rfc"."0.2.18"."constant_time_eq"}" deps)
  ];


# end
# block-0.1.6

  crates.block."0.1.6" = deps: { features?(features_.block."0.1.6" deps {}) }: buildRustCrate {
    crateName = "block";
    version = "0.1.6";
    authors = [ "Steven Sheldon" ];
    sha256 = "1hwfh5992ya0dsbn1ldrlbbdi2a8fqmnvdnla5rdbnd4g2bsc6q5";
  };
  features_.block."0.1.6" = deps: f: updateFeatures f (rec {
    block."0.1.6".default = (f.block."0.1.6".default or true);
  }) [];


# end
# bumpalo-2.5.0

  crates.bumpalo."2.5.0" = deps: { features?(features_.bumpalo."2.5.0" deps {}) }: buildRustCrate {
    crateName = "bumpalo";
    version = "2.5.0";
    authors = [ "Nick Fitzgerald <fitzgen@gmail.com>" ];
    edition = "2018";
    sha256 = "0lbqxm4ny8d8zq30nzmjgb06298jrpl5fbvayhgjycmgckvzd35f";
    libPath = "src/lib.rs";
    features = mkFeatures (features."bumpalo"."2.5.0" or {});
  };
  features_.bumpalo."2.5.0" = deps: f: updateFeatures f (rec {
    bumpalo = fold recursiveUpdate {} [
      { "2.5.0".collections =
        (f.bumpalo."2.5.0".collections or false) ||
        (f.bumpalo."2.5.0".default or false) ||
        (bumpalo."2.5.0"."default" or false); }
      { "2.5.0".default = (f.bumpalo."2.5.0".default or true); }
      { "2.5.0".std =
        (f.bumpalo."2.5.0".std or false) ||
        (f.bumpalo."2.5.0".collections or false) ||
        (bumpalo."2.5.0"."collections" or false) ||
        (f.bumpalo."2.5.0".default or false) ||
        (bumpalo."2.5.0"."default" or false); }
    ];
  }) [];


# end
# cc-1.0.38

  crates.cc."1.0.38" = deps: { features?(features_.cc."1.0.38" deps {}) }: buildRustCrate {
    crateName = "cc";
    version = "1.0.38";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "17zc9i3mp8jjnrz20ah4inpz2ihmjxl93iswvzm5rv4grk60pzn4";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."cc"."1.0.38" or {});
  };
  features_.cc."1.0.38" = deps: f: updateFeatures f (rec {
    cc = fold recursiveUpdate {} [
      { "1.0.38".default = (f.cc."1.0.38".default or true); }
      { "1.0.38".rayon =
        (f.cc."1.0.38".rayon or false) ||
        (f.cc."1.0.38".parallel or false) ||
        (cc."1.0.38"."parallel" or false); }
    ];
  }) [];


# end
# cfg-if-0.1.9

  crates.cfg_if."0.1.9" = deps: { features?(features_.cfg_if."0.1.9" deps {}) }: buildRustCrate {
    crateName = "cfg-if";
    version = "0.1.9";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "13g9p2mc5b2b5wn716fwvilzib376ycpkgk868yxfp16jzix57p7";
  };
  features_.cfg_if."0.1.9" = deps: f: updateFeatures f (rec {
    cfg_if."0.1.9".default = (f.cfg_if."0.1.9".default or true);
  }) [];


# end
# chrono-0.4.7

  crates.chrono."0.4.7" = deps: { features?(features_.chrono."0.4.7" deps {}) }: buildRustCrate {
    crateName = "chrono";
    version = "0.4.7";
    authors = [ "Kang Seonghoon <public+rust@mearie.org>" "Brandon W Maister <quodlibetor@gmail.com>" ];
    sha256 = "1f5r3h2vyr8g42fncp0g55qzaq2cxkchd59sjdlda1bl7m4wxnb5";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."chrono"."0.4.7"."libc"}" deps)
      (crates."num_integer"."${deps."chrono"."0.4.7"."num_integer"}" deps)
      (crates."num_traits"."${deps."chrono"."0.4.7"."num_traits"}" deps)
    ]
      ++ (if features.chrono."0.4.7".time or false then [ (crates.time."${deps."chrono"."0.4.7".time}" deps) ] else []));
    features = mkFeatures (features."chrono"."0.4.7" or {});
  };
  features_.chrono."0.4.7" = deps: f: updateFeatures f (rec {
    chrono = fold recursiveUpdate {} [
      { "0.4.7".clock =
        (f.chrono."0.4.7".clock or false) ||
        (f.chrono."0.4.7".default or false) ||
        (chrono."0.4.7"."default" or false); }
      { "0.4.7".default = (f.chrono."0.4.7".default or true); }
      { "0.4.7".time =
        (f.chrono."0.4.7".time or false) ||
        (f.chrono."0.4.7".clock or false) ||
        (chrono."0.4.7"."clock" or false); }
    ];
    libc."${deps.chrono."0.4.7".libc}".default = (f.libc."${deps.chrono."0.4.7".libc}".default or false);
    num_integer."${deps.chrono."0.4.7".num_integer}".default = (f.num_integer."${deps.chrono."0.4.7".num_integer}".default or false);
    num_traits."${deps.chrono."0.4.7".num_traits}".default = (f.num_traits."${deps.chrono."0.4.7".num_traits}".default or false);
    time."${deps.chrono."0.4.7".time}".default = true;
  }) [
    (features_.libc."${deps."chrono"."0.4.7"."libc"}" deps)
    (features_.num_integer."${deps."chrono"."0.4.7"."num_integer"}" deps)
    (features_.num_traits."${deps."chrono"."0.4.7"."num_traits"}" deps)
    (features_.time."${deps."chrono"."0.4.7"."time"}" deps)
  ];


# end
# cloudabi-0.0.3

  crates.cloudabi."0.0.3" = deps: { features?(features_.cloudabi."0.0.3" deps {}) }: buildRustCrate {
    crateName = "cloudabi";
    version = "0.0.3";
    authors = [ "Nuxi (https://nuxi.nl/) and contributors" ];
    sha256 = "1z9lby5sr6vslfd14d6igk03s7awf91mxpsfmsp3prxbxlk0x7h5";
    libPath = "cloudabi.rs";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.cloudabi."0.0.3".bitflags or false then [ (crates.bitflags."${deps."cloudabi"."0.0.3".bitflags}" deps) ] else []));
    features = mkFeatures (features."cloudabi"."0.0.3" or {});
  };
  features_.cloudabi."0.0.3" = deps: f: updateFeatures f (rec {
    bitflags."${deps.cloudabi."0.0.3".bitflags}".default = true;
    cloudabi = fold recursiveUpdate {} [
      { "0.0.3".bitflags =
        (f.cloudabi."0.0.3".bitflags or false) ||
        (f.cloudabi."0.0.3".default or false) ||
        (cloudabi."0.0.3"."default" or false); }
      { "0.0.3".default = (f.cloudabi."0.0.3".default or true); }
    ];
  }) [
    (features_.bitflags."${deps."cloudabi"."0.0.3"."bitflags"}" deps)
  ];


# end
# constant_time_eq-0.1.3

  crates.constant_time_eq."0.1.3" = deps: { features?(features_.constant_time_eq."0.1.3" deps {}) }: buildRustCrate {
    crateName = "constant_time_eq";
    version = "0.1.3";
    authors = [ "Cesar Eduardo Barros <cesarb@cesarb.eti.br>" ];
    sha256 = "03qri9hjf049gwqg9q527lybpg918q6y5q4g9a5lma753nff49wd";
  };
  features_.constant_time_eq."0.1.3" = deps: f: updateFeatures f (rec {
    constant_time_eq."0.1.3".default = (f.constant_time_eq."0.1.3".default or true);
  }) [];


# end
# core-foundation-0.6.4

  crates.core_foundation."0.6.4" = deps: { features?(features_.core_foundation."0.6.4" deps {}) }: buildRustCrate {
    crateName = "core-foundation";
    version = "0.6.4";
    authors = [ "The Servo Project Developers" ];
    sha256 = "1kabsqxh01m6l2b1gz8wgn0d1k6fyczww9kaks0sbmsz5g78ngzx";
    dependencies = mapFeatures features ([
      (crates."core_foundation_sys"."${deps."core_foundation"."0.6.4"."core_foundation_sys"}" deps)
      (crates."libc"."${deps."core_foundation"."0.6.4"."libc"}" deps)
    ]);
    features = mkFeatures (features."core_foundation"."0.6.4" or {});
  };
  features_.core_foundation."0.6.4" = deps: f: updateFeatures f (rec {
    core_foundation = fold recursiveUpdate {} [
      { "0.6.4".chrono =
        (f.core_foundation."0.6.4".chrono or false) ||
        (f.core_foundation."0.6.4".with-chrono or false) ||
        (core_foundation."0.6.4"."with-chrono" or false); }
      { "0.6.4".default = (f.core_foundation."0.6.4".default or true); }
      { "0.6.4".uuid =
        (f.core_foundation."0.6.4".uuid or false) ||
        (f.core_foundation."0.6.4".with-uuid or false) ||
        (core_foundation."0.6.4"."with-uuid" or false); }
    ];
    core_foundation_sys = fold recursiveUpdate {} [
      { "${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_7_support" =
        (f.core_foundation_sys."${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_7_support" or false) ||
        (core_foundation."0.6.4"."mac_os_10_7_support" or false) ||
        (f."core_foundation"."0.6.4"."mac_os_10_7_support" or false); }
      { "${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_8_features" =
        (f.core_foundation_sys."${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_8_features" or false) ||
        (core_foundation."0.6.4"."mac_os_10_8_features" or false) ||
        (f."core_foundation"."0.6.4"."mac_os_10_8_features" or false); }
      { "${deps.core_foundation."0.6.4".core_foundation_sys}".default = true; }
    ];
    libc."${deps.core_foundation."0.6.4".libc}".default = true;
  }) [
    (features_.core_foundation_sys."${deps."core_foundation"."0.6.4"."core_foundation_sys"}" deps)
    (features_.libc."${deps."core_foundation"."0.6.4"."libc"}" deps)
  ];


# end
# core-foundation-sys-0.6.2

  crates.core_foundation_sys."0.6.2" = deps: { features?(features_.core_foundation_sys."0.6.2" deps {}) }: buildRustCrate {
    crateName = "core-foundation-sys";
    version = "0.6.2";
    authors = [ "The Servo Project Developers" ];
    sha256 = "1n2v6wlqkmqwhl7k6y50irx51p37xb0fcm3njbman82gnyq8di2c";
    build = "build.rs";
    features = mkFeatures (features."core_foundation_sys"."0.6.2" or {});
  };
  features_.core_foundation_sys."0.6.2" = deps: f: updateFeatures f (rec {
    core_foundation_sys."0.6.2".default = (f.core_foundation_sys."0.6.2".default or true);
  }) [];


# end
# crossbeam-0.6.0

  crates.crossbeam."0.6.0" = deps: { features?(features_.crossbeam."0.6.0" deps {}) }: buildRustCrate {
    crateName = "crossbeam";
    version = "0.6.0";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "1hsp7ljqhywz1ykdr23ggi33ds87lk0gg45mjlf0m5qd0399x2xf";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."crossbeam"."0.6.0"."cfg_if"}" deps)
      (crates."crossbeam_channel"."${deps."crossbeam"."0.6.0"."crossbeam_channel"}" deps)
      (crates."crossbeam_deque"."${deps."crossbeam"."0.6.0"."crossbeam_deque"}" deps)
      (crates."crossbeam_epoch"."${deps."crossbeam"."0.6.0"."crossbeam_epoch"}" deps)
      (crates."crossbeam_utils"."${deps."crossbeam"."0.6.0"."crossbeam_utils"}" deps)
      (crates."lazy_static"."${deps."crossbeam"."0.6.0"."lazy_static"}" deps)
      (crates."num_cpus"."${deps."crossbeam"."0.6.0"."num_cpus"}" deps)
      (crates."parking_lot"."${deps."crossbeam"."0.6.0"."parking_lot"}" deps)
    ]);
    features = mkFeatures (features."crossbeam"."0.6.0" or {});
  };
  features_.crossbeam."0.6.0" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.crossbeam."0.6.0".cfg_if}".default = true;
    crossbeam = fold recursiveUpdate {} [
      { "0.6.0".default = (f.crossbeam."0.6.0".default or true); }
      { "0.6.0".std =
        (f.crossbeam."0.6.0".std or false) ||
        (f.crossbeam."0.6.0".default or false) ||
        (crossbeam."0.6.0"."default" or false); }
    ];
    crossbeam_channel."${deps.crossbeam."0.6.0".crossbeam_channel}".default = true;
    crossbeam_deque."${deps.crossbeam."0.6.0".crossbeam_deque}".default = true;
    crossbeam_epoch = fold recursiveUpdate {} [
      { "${deps.crossbeam."0.6.0".crossbeam_epoch}"."nightly" =
        (f.crossbeam_epoch."${deps.crossbeam."0.6.0".crossbeam_epoch}"."nightly" or false) ||
        (crossbeam."0.6.0"."nightly" or false) ||
        (f."crossbeam"."0.6.0"."nightly" or false); }
      { "${deps.crossbeam."0.6.0".crossbeam_epoch}"."std" =
        (f.crossbeam_epoch."${deps.crossbeam."0.6.0".crossbeam_epoch}"."std" or false) ||
        (crossbeam."0.6.0"."std" or false) ||
        (f."crossbeam"."0.6.0"."std" or false); }
      { "${deps.crossbeam."0.6.0".crossbeam_epoch}".default = true; }
    ];
    crossbeam_utils = fold recursiveUpdate {} [
      { "${deps.crossbeam."0.6.0".crossbeam_utils}"."nightly" =
        (f.crossbeam_utils."${deps.crossbeam."0.6.0".crossbeam_utils}"."nightly" or false) ||
        (crossbeam."0.6.0"."nightly" or false) ||
        (f."crossbeam"."0.6.0"."nightly" or false); }
      { "${deps.crossbeam."0.6.0".crossbeam_utils}"."std" =
        (f.crossbeam_utils."${deps.crossbeam."0.6.0".crossbeam_utils}"."std" or false) ||
        (crossbeam."0.6.0"."std" or false) ||
        (f."crossbeam"."0.6.0"."std" or false); }
      { "${deps.crossbeam."0.6.0".crossbeam_utils}".default = true; }
    ];
    lazy_static."${deps.crossbeam."0.6.0".lazy_static}".default = true;
    num_cpus."${deps.crossbeam."0.6.0".num_cpus}".default = true;
    parking_lot."${deps.crossbeam."0.6.0".parking_lot}".default = true;
  }) [
    (features_.cfg_if."${deps."crossbeam"."0.6.0"."cfg_if"}" deps)
    (features_.crossbeam_channel."${deps."crossbeam"."0.6.0"."crossbeam_channel"}" deps)
    (features_.crossbeam_deque."${deps."crossbeam"."0.6.0"."crossbeam_deque"}" deps)
    (features_.crossbeam_epoch."${deps."crossbeam"."0.6.0"."crossbeam_epoch"}" deps)
    (features_.crossbeam_utils."${deps."crossbeam"."0.6.0"."crossbeam_utils"}" deps)
    (features_.lazy_static."${deps."crossbeam"."0.6.0"."lazy_static"}" deps)
    (features_.num_cpus."${deps."crossbeam"."0.6.0"."num_cpus"}" deps)
    (features_.parking_lot."${deps."crossbeam"."0.6.0"."parking_lot"}" deps)
  ];


# end
# crossbeam-channel-0.3.9

  crates.crossbeam_channel."0.3.9" = deps: { features?(features_.crossbeam_channel."0.3.9" deps {}) }: buildRustCrate {
    crateName = "crossbeam-channel";
    version = "0.3.9";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "0si8kg061qgadx56dfyil2jq0ffckg6sk3mf2vl8ha8fwi9kd34h";
    dependencies = mapFeatures features ([
      (crates."crossbeam_utils"."${deps."crossbeam_channel"."0.3.9"."crossbeam_utils"}" deps)
    ]);
  };
  features_.crossbeam_channel."0.3.9" = deps: f: updateFeatures f (rec {
    crossbeam_channel."0.3.9".default = (f.crossbeam_channel."0.3.9".default or true);
    crossbeam_utils."${deps.crossbeam_channel."0.3.9".crossbeam_utils}".default = true;
  }) [
    (features_.crossbeam_utils."${deps."crossbeam_channel"."0.3.9"."crossbeam_utils"}" deps)
  ];


# end
# crossbeam-deque-0.6.3

  crates.crossbeam_deque."0.6.3" = deps: { features?(features_.crossbeam_deque."0.6.3" deps {}) }: buildRustCrate {
    crateName = "crossbeam-deque";
    version = "0.6.3";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "07dahkh6rc09nzg7054rnmxhni263pi9arcyjyy822kg59c0lfz8";
    dependencies = mapFeatures features ([
      (crates."crossbeam_epoch"."${deps."crossbeam_deque"."0.6.3"."crossbeam_epoch"}" deps)
      (crates."crossbeam_utils"."${deps."crossbeam_deque"."0.6.3"."crossbeam_utils"}" deps)
    ]);
  };
  features_.crossbeam_deque."0.6.3" = deps: f: updateFeatures f (rec {
    crossbeam_deque."0.6.3".default = (f.crossbeam_deque."0.6.3".default or true);
    crossbeam_epoch."${deps.crossbeam_deque."0.6.3".crossbeam_epoch}".default = true;
    crossbeam_utils."${deps.crossbeam_deque."0.6.3".crossbeam_utils}".default = true;
  }) [
    (features_.crossbeam_epoch."${deps."crossbeam_deque"."0.6.3"."crossbeam_epoch"}" deps)
    (features_.crossbeam_utils."${deps."crossbeam_deque"."0.6.3"."crossbeam_utils"}" deps)
  ];


# end
# crossbeam-epoch-0.7.2

  crates.crossbeam_epoch."0.7.2" = deps: { features?(features_.crossbeam_epoch."0.7.2" deps {}) }: buildRustCrate {
    crateName = "crossbeam-epoch";
    version = "0.7.2";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "015axh69r6ggj481ncqj09d7ssbqf8psgyqq9hhpkrh3j7xn4vmn";
    dependencies = mapFeatures features ([
      (crates."arrayvec"."${deps."crossbeam_epoch"."0.7.2"."arrayvec"}" deps)
      (crates."cfg_if"."${deps."crossbeam_epoch"."0.7.2"."cfg_if"}" deps)
      (crates."crossbeam_utils"."${deps."crossbeam_epoch"."0.7.2"."crossbeam_utils"}" deps)
      (crates."memoffset"."${deps."crossbeam_epoch"."0.7.2"."memoffset"}" deps)
      (crates."scopeguard"."${deps."crossbeam_epoch"."0.7.2"."scopeguard"}" deps)
    ]
      ++ (if features.crossbeam_epoch."0.7.2".lazy_static or false then [ (crates.lazy_static."${deps."crossbeam_epoch"."0.7.2".lazy_static}" deps) ] else []));
    features = mkFeatures (features."crossbeam_epoch"."0.7.2" or {});
  };
  features_.crossbeam_epoch."0.7.2" = deps: f: updateFeatures f (rec {
    arrayvec = fold recursiveUpdate {} [
      { "${deps.crossbeam_epoch."0.7.2".arrayvec}"."use_union" =
        (f.arrayvec."${deps.crossbeam_epoch."0.7.2".arrayvec}"."use_union" or false) ||
        (crossbeam_epoch."0.7.2"."nightly" or false) ||
        (f."crossbeam_epoch"."0.7.2"."nightly" or false); }
      { "${deps.crossbeam_epoch."0.7.2".arrayvec}".default = (f.arrayvec."${deps.crossbeam_epoch."0.7.2".arrayvec}".default or false); }
    ];
    cfg_if."${deps.crossbeam_epoch."0.7.2".cfg_if}".default = true;
    crossbeam_epoch = fold recursiveUpdate {} [
      { "0.7.2".default = (f.crossbeam_epoch."0.7.2".default or true); }
      { "0.7.2".lazy_static =
        (f.crossbeam_epoch."0.7.2".lazy_static or false) ||
        (f.crossbeam_epoch."0.7.2".std or false) ||
        (crossbeam_epoch."0.7.2"."std" or false); }
      { "0.7.2".std =
        (f.crossbeam_epoch."0.7.2".std or false) ||
        (f.crossbeam_epoch."0.7.2".default or false) ||
        (crossbeam_epoch."0.7.2"."default" or false); }
    ];
    crossbeam_utils = fold recursiveUpdate {} [
      { "${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."alloc" =
        (f.crossbeam_utils."${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."alloc" or false) ||
        (crossbeam_epoch."0.7.2"."alloc" or false) ||
        (f."crossbeam_epoch"."0.7.2"."alloc" or false); }
      { "${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."nightly" =
        (f.crossbeam_utils."${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."nightly" or false) ||
        (crossbeam_epoch."0.7.2"."nightly" or false) ||
        (f."crossbeam_epoch"."0.7.2"."nightly" or false); }
      { "${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."std" =
        (f.crossbeam_utils."${deps.crossbeam_epoch."0.7.2".crossbeam_utils}"."std" or false) ||
        (crossbeam_epoch."0.7.2"."std" or false) ||
        (f."crossbeam_epoch"."0.7.2"."std" or false); }
      { "${deps.crossbeam_epoch."0.7.2".crossbeam_utils}".default = (f.crossbeam_utils."${deps.crossbeam_epoch."0.7.2".crossbeam_utils}".default or false); }
    ];
    lazy_static."${deps.crossbeam_epoch."0.7.2".lazy_static}".default = true;
    memoffset."${deps.crossbeam_epoch."0.7.2".memoffset}".default = true;
    scopeguard."${deps.crossbeam_epoch."0.7.2".scopeguard}".default = (f.scopeguard."${deps.crossbeam_epoch."0.7.2".scopeguard}".default or false);
  }) [
    (features_.arrayvec."${deps."crossbeam_epoch"."0.7.2"."arrayvec"}" deps)
    (features_.cfg_if."${deps."crossbeam_epoch"."0.7.2"."cfg_if"}" deps)
    (features_.crossbeam_utils."${deps."crossbeam_epoch"."0.7.2"."crossbeam_utils"}" deps)
    (features_.lazy_static."${deps."crossbeam_epoch"."0.7.2"."lazy_static"}" deps)
    (features_.memoffset."${deps."crossbeam_epoch"."0.7.2"."memoffset"}" deps)
    (features_.scopeguard."${deps."crossbeam_epoch"."0.7.2"."scopeguard"}" deps)
  ];


# end
# crossbeam-utils-0.6.6

  crates.crossbeam_utils."0.6.6" = deps: { features?(features_.crossbeam_utils."0.6.6" deps {}) }: buildRustCrate {
    crateName = "crossbeam-utils";
    version = "0.6.6";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "01gxccmrjkkcavdh8fc01kj3b5fmk10f0lkx66jmnv69kcssry72";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."crossbeam_utils"."0.6.6"."cfg_if"}" deps)
    ]
      ++ (if features.crossbeam_utils."0.6.6".lazy_static or false then [ (crates.lazy_static."${deps."crossbeam_utils"."0.6.6".lazy_static}" deps) ] else []));
    features = mkFeatures (features."crossbeam_utils"."0.6.6" or {});
  };
  features_.crossbeam_utils."0.6.6" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.crossbeam_utils."0.6.6".cfg_if}".default = true;
    crossbeam_utils = fold recursiveUpdate {} [
      { "0.6.6".default = (f.crossbeam_utils."0.6.6".default or true); }
      { "0.6.6".lazy_static =
        (f.crossbeam_utils."0.6.6".lazy_static or false) ||
        (f.crossbeam_utils."0.6.6".std or false) ||
        (crossbeam_utils."0.6.6"."std" or false); }
      { "0.6.6".std =
        (f.crossbeam_utils."0.6.6".std or false) ||
        (f.crossbeam_utils."0.6.6".default or false) ||
        (crossbeam_utils."0.6.6"."default" or false); }
    ];
    lazy_static."${deps.crossbeam_utils."0.6.6".lazy_static}".default = true;
  }) [
    (features_.cfg_if."${deps."crossbeam_utils"."0.6.6"."cfg_if"}" deps)
    (features_.lazy_static."${deps."crossbeam_utils"."0.6.6"."lazy_static"}" deps)
  ];


# end
# dbus-0.6.5

  crates.dbus."0.6.5" = deps: { features?(features_.dbus."0.6.5" deps {}) }: buildRustCrate {
    crateName = "dbus";
    version = "0.6.5";
    authors = [ "David Henningsson <diwic@ubuntu.com>" ];
    sha256 = "1lzvxci3nm6lcvd37pxw4dbi2h0v34v26dr9yb161pcgzavi8fpj";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."dbus"."0.6.5"."libc"}" deps)
      (crates."libdbus_sys"."${deps."dbus"."0.6.5"."libdbus_sys"}" deps)
    ]);
    features = mkFeatures (features."dbus"."0.6.5" or {});
  };
  features_.dbus."0.6.5" = deps: f: updateFeatures f (rec {
    dbus."0.6.5".default = (f.dbus."0.6.5".default or true);
    libc."${deps.dbus."0.6.5".libc}".default = true;
    libdbus_sys."${deps.dbus."0.6.5".libdbus_sys}".default = true;
  }) [
    (features_.libc."${deps."dbus"."0.6.5"."libc"}" deps)
    (features_.libdbus_sys."${deps."dbus"."0.6.5"."libdbus_sys"}" deps)
  ];


# end
# derive_more-0.15.0

  crates.derive_more."0.15.0" = deps: { features?(features_.derive_more."0.15.0" deps {}) }: buildRustCrate {
    crateName = "derive_more";
    version = "0.15.0";
    authors = [ "Jelte Fennema <github-tech@jeltef.nl>" ];
    sha256 = "1lllp7pay285liza2qb1x5jcyimrzznr76xsy406rlddws1ivzz4";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."lazy_static"."${deps."derive_more"."0.15.0"."lazy_static"}" deps)
      (crates."proc_macro2"."${deps."derive_more"."0.15.0"."proc_macro2"}" deps)
      (crates."quote"."${deps."derive_more"."0.15.0"."quote"}" deps)
      (crates."regex"."${deps."derive_more"."0.15.0"."regex"}" deps)
      (crates."syn"."${deps."derive_more"."0.15.0"."syn"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."rustc_version"."${deps."derive_more"."0.15.0"."rustc_version"}" deps)
    ]);
    features = mkFeatures (features."derive_more"."0.15.0" or {});
  };
  features_.derive_more."0.15.0" = deps: f: updateFeatures f (rec {
    derive_more."0.15.0".default = (f.derive_more."0.15.0".default or true);
    lazy_static."${deps.derive_more."0.15.0".lazy_static}".default = true;
    proc_macro2."${deps.derive_more."0.15.0".proc_macro2}".default = true;
    quote."${deps.derive_more."0.15.0".quote}".default = true;
    regex."${deps.derive_more."0.15.0".regex}".default = true;
    rustc_version."${deps.derive_more."0.15.0".rustc_version}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.derive_more."0.15.0".syn}"."extra-traits" = true; }
      { "${deps.derive_more."0.15.0".syn}".default = true; }
    ];
  }) [
    (features_.lazy_static."${deps."derive_more"."0.15.0"."lazy_static"}" deps)
    (features_.proc_macro2."${deps."derive_more"."0.15.0"."proc_macro2"}" deps)
    (features_.quote."${deps."derive_more"."0.15.0"."quote"}" deps)
    (features_.regex."${deps."derive_more"."0.15.0"."regex"}" deps)
    (features_.syn."${deps."derive_more"."0.15.0"."syn"}" deps)
    (features_.rustc_version."${deps."derive_more"."0.15.0"."rustc_version"}" deps)
  ];


# end
# dirs-1.0.5

  crates.dirs."1.0.5" = deps: { features?(features_.dirs."1.0.5" deps {}) }: buildRustCrate {
    crateName = "dirs";
    version = "1.0.5";
    authors = [ "Simon Ochsenreither <simon@ochsenreither.de>" ];
    sha256 = "1py68zwwrhlj5vbz9f9ansjmhc8y4gs5bpamw9ycmqz030pprwf3";
    dependencies = (if kernel == "redox" then mapFeatures features ([
      (crates."redox_users"."${deps."dirs"."1.0.5"."redox_users"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."dirs"."1.0.5"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."dirs"."1.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.dirs."1.0.5" = deps: f: updateFeatures f (rec {
    dirs."1.0.5".default = (f.dirs."1.0.5".default or true);
    libc."${deps.dirs."1.0.5".libc}".default = true;
    redox_users."${deps.dirs."1.0.5".redox_users}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.dirs."1.0.5".winapi}"."knownfolders" = true; }
      { "${deps.dirs."1.0.5".winapi}"."objbase" = true; }
      { "${deps.dirs."1.0.5".winapi}"."shlobj" = true; }
      { "${deps.dirs."1.0.5".winapi}"."winbase" = true; }
      { "${deps.dirs."1.0.5".winapi}"."winerror" = true; }
      { "${deps.dirs."1.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.redox_users."${deps."dirs"."1.0.5"."redox_users"}" deps)
    (features_.libc."${deps."dirs"."1.0.5"."libc"}" deps)
    (features_.winapi."${deps."dirs"."1.0.5"."winapi"}" deps)
  ];


# end
# doc-comment-0.3.1

  crates.doc_comment."0.3.1" = deps: { features?(features_.doc_comment."0.3.1" deps {}) }: buildRustCrate {
    crateName = "doc-comment";
    version = "0.3.1";
    authors = [ "Guillaume Gomez <guillaume1.gomez@gmail.com>" ];
    sha256 = "1856qmxkg9mmk573agnydl5hvmlplk336yys7s72rqygx6j39dyr";
    libName = "doc_comment";
    build = "build.rs";
    features = mkFeatures (features."doc_comment"."0.3.1" or {});
  };
  features_.doc_comment."0.3.1" = deps: f: updateFeatures f (rec {
    doc_comment."0.3.1".default = (f.doc_comment."0.3.1".default or true);
  }) [];


# end
# failure-0.1.5

  crates.failure."0.1.5" = deps: { features?(features_.failure."0.1.5" deps {}) }: buildRustCrate {
    crateName = "failure";
    version = "0.1.5";
    authors = [ "Without Boats <boats@mozilla.com>" ];
    sha256 = "1msaj1c0fg12dzyf4fhxqlx1gfx41lj2smdjmkc9hkrgajk2g3kx";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.failure."0.1.5".backtrace or false then [ (crates.backtrace."${deps."failure"."0.1.5".backtrace}" deps) ] else [])
      ++ (if features.failure."0.1.5".failure_derive or false then [ (crates.failure_derive."${deps."failure"."0.1.5".failure_derive}" deps) ] else []));
    features = mkFeatures (features."failure"."0.1.5" or {});
  };
  features_.failure."0.1.5" = deps: f: updateFeatures f (rec {
    backtrace."${deps.failure."0.1.5".backtrace}".default = true;
    failure = fold recursiveUpdate {} [
      { "0.1.5".backtrace =
        (f.failure."0.1.5".backtrace or false) ||
        (f.failure."0.1.5".std or false) ||
        (failure."0.1.5"."std" or false); }
      { "0.1.5".default = (f.failure."0.1.5".default or true); }
      { "0.1.5".derive =
        (f.failure."0.1.5".derive or false) ||
        (f.failure."0.1.5".default or false) ||
        (failure."0.1.5"."default" or false); }
      { "0.1.5".failure_derive =
        (f.failure."0.1.5".failure_derive or false) ||
        (f.failure."0.1.5".derive or false) ||
        (failure."0.1.5"."derive" or false); }
      { "0.1.5".std =
        (f.failure."0.1.5".std or false) ||
        (f.failure."0.1.5".default or false) ||
        (failure."0.1.5"."default" or false); }
    ];
    failure_derive."${deps.failure."0.1.5".failure_derive}".default = true;
  }) [
    (features_.backtrace."${deps."failure"."0.1.5"."backtrace"}" deps)
    (features_.failure_derive."${deps."failure"."0.1.5"."failure_derive"}" deps)
  ];


# end
# failure_derive-0.1.5

  crates.failure_derive."0.1.5" = deps: { features?(features_.failure_derive."0.1.5" deps {}) }: buildRustCrate {
    crateName = "failure_derive";
    version = "0.1.5";
    authors = [ "Without Boats <woboats@gmail.com>" ];
    sha256 = "1wzk484b87r4qszcvdl2bkniv5ls4r2f2dshz7hmgiv6z4ln12g0";
    procMacro = true;
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."failure_derive"."0.1.5"."proc_macro2"}" deps)
      (crates."quote"."${deps."failure_derive"."0.1.5"."quote"}" deps)
      (crates."syn"."${deps."failure_derive"."0.1.5"."syn"}" deps)
      (crates."synstructure"."${deps."failure_derive"."0.1.5"."synstructure"}" deps)
    ]);
    features = mkFeatures (features."failure_derive"."0.1.5" or {});
  };
  features_.failure_derive."0.1.5" = deps: f: updateFeatures f (rec {
    failure_derive."0.1.5".default = (f.failure_derive."0.1.5".default or true);
    proc_macro2."${deps.failure_derive."0.1.5".proc_macro2}".default = true;
    quote."${deps.failure_derive."0.1.5".quote}".default = true;
    syn."${deps.failure_derive."0.1.5".syn}".default = true;
    synstructure."${deps.failure_derive."0.1.5".synstructure}".default = true;
  }) [
    (features_.proc_macro2."${deps."failure_derive"."0.1.5"."proc_macro2"}" deps)
    (features_.quote."${deps."failure_derive"."0.1.5"."quote"}" deps)
    (features_.syn."${deps."failure_derive"."0.1.5"."syn"}" deps)
    (features_.synstructure."${deps."failure_derive"."0.1.5"."synstructure"}" deps)
  ];


# end
# fuchsia-cprng-0.1.1

  crates.fuchsia_cprng."0.1.1" = deps: { features?(features_.fuchsia_cprng."0.1.1" deps {}) }: buildRustCrate {
    crateName = "fuchsia-cprng";
    version = "0.1.1";
    authors = [ "Erick Tryzelaar <etryzelaar@google.com>" ];
    edition = "2018";
    sha256 = "07apwv9dj716yjlcj29p94vkqn5zmfh7hlrqvrjx3wzshphc95h9";
  };
  features_.fuchsia_cprng."0.1.1" = deps: f: updateFeatures f (rec {
    fuchsia_cprng."0.1.1".default = (f.fuchsia_cprng."0.1.1".default or true);
  }) [];


# end
# fuchsia-zircon-0.3.3

  crates.fuchsia_zircon."0.3.3" = deps: { features?(features_.fuchsia_zircon."0.3.3" deps {}) }: buildRustCrate {
    crateName = "fuchsia-zircon";
    version = "0.3.3";
    authors = [ "Raph Levien <raph@google.com>" ];
    sha256 = "0jrf4shb1699r4la8z358vri8318w4mdi6qzfqy30p2ymjlca4gk";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."fuchsia_zircon"."0.3.3"."bitflags"}" deps)
      (crates."fuchsia_zircon_sys"."${deps."fuchsia_zircon"."0.3.3"."fuchsia_zircon_sys"}" deps)
    ]);
  };
  features_.fuchsia_zircon."0.3.3" = deps: f: updateFeatures f (rec {
    bitflags."${deps.fuchsia_zircon."0.3.3".bitflags}".default = true;
    fuchsia_zircon."0.3.3".default = (f.fuchsia_zircon."0.3.3".default or true);
    fuchsia_zircon_sys."${deps.fuchsia_zircon."0.3.3".fuchsia_zircon_sys}".default = true;
  }) [
    (features_.bitflags."${deps."fuchsia_zircon"."0.3.3"."bitflags"}" deps)
    (features_.fuchsia_zircon_sys."${deps."fuchsia_zircon"."0.3.3"."fuchsia_zircon_sys"}" deps)
  ];


# end
# fuchsia-zircon-sys-0.3.3

  crates.fuchsia_zircon_sys."0.3.3" = deps: { features?(features_.fuchsia_zircon_sys."0.3.3" deps {}) }: buildRustCrate {
    crateName = "fuchsia-zircon-sys";
    version = "0.3.3";
    authors = [ "Raph Levien <raph@google.com>" ];
    sha256 = "08jp1zxrm9jbrr6l26bjal4dbm8bxfy57ickdgibsqxr1n9j3hf5";
  };
  features_.fuchsia_zircon_sys."0.3.3" = deps: f: updateFeatures f (rec {
    fuchsia_zircon_sys."0.3.3".default = (f.fuchsia_zircon_sys."0.3.3".default or true);
  }) [];


# end
# futures-0.1.28

  crates.futures."0.1.28" = deps: { features?(features_.futures."0.1.28" deps {}) }: buildRustCrate {
    crateName = "futures";
    version = "0.1.28";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0pkxsf15wcizg3qb0qkip52xis8kiq7rdxiw1f2whzq0mb7m6m0s";
    features = mkFeatures (features."futures"."0.1.28" or {});
  };
  features_.futures."0.1.28" = deps: f: updateFeatures f (rec {
    futures = fold recursiveUpdate {} [
      { "0.1.28".default = (f.futures."0.1.28".default or true); }
      { "0.1.28".use_std =
        (f.futures."0.1.28".use_std or false) ||
        (f.futures."0.1.28".default or false) ||
        (futures."0.1.28"."default" or false); }
      { "0.1.28".with-deprecated =
        (f.futures."0.1.28".with-deprecated or false) ||
        (f.futures."0.1.28".default or false) ||
        (futures."0.1.28"."default" or false); }
    ];
  }) [];


# end
# futures-channel-preview-0.3.0-alpha.17

  crates.futures_channel_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_channel_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-channel-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "13d5a67503jlk60k91yh1rq9dhw4ij7nhalal29w93qvcmac40cl";
    libName = "futures_channel";
    dependencies = mapFeatures features ([
      (crates."futures_core_preview"."${deps."futures_channel_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    ]
      ++ (if features.futures_channel_preview."0.3.0-alpha.17".futures-sink-preview or false then [ (crates.futures_sink_preview."${deps."futures_channel_preview"."0.3.0-alpha.17".futures_sink_preview}" deps) ] else []));
    features = mkFeatures (features."futures_channel_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_channel_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_channel_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".default = (f.futures_channel_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".futures-sink-preview =
        (f.futures_channel_preview."0.3.0-alpha.17".futures-sink-preview or false) ||
        (f.futures_channel_preview."0.3.0-alpha.17".sink or false) ||
        (futures_channel_preview."0.3.0-alpha.17"."sink" or false); }
      { "0.3.0-alpha.17".std =
        (f.futures_channel_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_channel_preview."0.3.0-alpha.17".default or false) ||
        (futures_channel_preview."0.3.0-alpha.17"."default" or false); }
    ];
    futures_core_preview = fold recursiveUpdate {} [
      { "${deps.futures_channel_preview."0.3.0-alpha.17".futures_core_preview}"."std" =
        (f.futures_core_preview."${deps.futures_channel_preview."0.3.0-alpha.17".futures_core_preview}"."std" or false) ||
        (futures_channel_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_channel_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_channel_preview."0.3.0-alpha.17".futures_core_preview}".default = (f.futures_core_preview."${deps.futures_channel_preview."0.3.0-alpha.17".futures_core_preview}".default or false); }
    ];
    futures_sink_preview."${deps.futures_channel_preview."0.3.0-alpha.17".futures_sink_preview}".default = (f.futures_sink_preview."${deps.futures_channel_preview."0.3.0-alpha.17".futures_sink_preview}".default or false);
  }) [
    (features_.futures_core_preview."${deps."futures_channel_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    (features_.futures_sink_preview."${deps."futures_channel_preview"."0.3.0-alpha.17"."futures_sink_preview"}" deps)
  ];


# end
# futures-core-preview-0.3.0-alpha.17

  crates.futures_core_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_core_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-core-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "1ms95n5c040dqq0mxz1qls4xb1bss97pj1ms4xazq43wm24xf9hp";
    libName = "futures_core";
    features = mkFeatures (features."futures_core_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_core_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_core_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".alloc =
        (f.futures_core_preview."0.3.0-alpha.17".alloc or false) ||
        (f.futures_core_preview."0.3.0-alpha.17".std or false) ||
        (futures_core_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".default = (f.futures_core_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".std =
        (f.futures_core_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_core_preview."0.3.0-alpha.17".default or false) ||
        (futures_core_preview."0.3.0-alpha.17"."default" or false); }
    ];
  }) [];


# end
# futures-executor-preview-0.3.0-alpha.17

  crates.futures_executor_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_executor_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-executor-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "1qyr82zh1kzygn5mnf3vwc6yzp2jdw1vla6g0hnxrdlfy8i1ngh7";
    libName = "futures_executor";
    dependencies = mapFeatures features ([
      (crates."futures_channel_preview"."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_channel_preview"}" deps)
      (crates."futures_core_preview"."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
      (crates."futures_util_preview"."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_util_preview"}" deps)
    ]
      ++ (if features.futures_executor_preview."0.3.0-alpha.17".num_cpus or false then [ (crates.num_cpus."${deps."futures_executor_preview"."0.3.0-alpha.17".num_cpus}" deps) ] else []));
    features = mkFeatures (features."futures_executor_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_executor_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_channel_preview = fold recursiveUpdate {} [
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_channel_preview}"."std" =
        (f.futures_channel_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_channel_preview}"."std" or false) ||
        (futures_executor_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_executor_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_channel_preview}".default = (f.futures_channel_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_channel_preview}".default or false); }
    ];
    futures_core_preview = fold recursiveUpdate {} [
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_core_preview}"."std" =
        (f.futures_core_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_core_preview}"."std" or false) ||
        (futures_executor_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_executor_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_core_preview}".default = (f.futures_core_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_core_preview}".default or false); }
    ];
    futures_executor_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".default = (f.futures_executor_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".num_cpus =
        (f.futures_executor_preview."0.3.0-alpha.17".num_cpus or false) ||
        (f.futures_executor_preview."0.3.0-alpha.17".std or false) ||
        (futures_executor_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".std =
        (f.futures_executor_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_executor_preview."0.3.0-alpha.17".default or false) ||
        (futures_executor_preview."0.3.0-alpha.17"."default" or false); }
    ];
    futures_util_preview = fold recursiveUpdate {} [
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_util_preview}"."std" =
        (f.futures_util_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_util_preview}"."std" or false) ||
        (futures_executor_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_executor_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_executor_preview."0.3.0-alpha.17".futures_util_preview}".default = (f.futures_util_preview."${deps.futures_executor_preview."0.3.0-alpha.17".futures_util_preview}".default or false); }
    ];
    num_cpus."${deps.futures_executor_preview."0.3.0-alpha.17".num_cpus}".default = true;
  }) [
    (features_.futures_channel_preview."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_channel_preview"}" deps)
    (features_.futures_core_preview."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    (features_.futures_util_preview."${deps."futures_executor_preview"."0.3.0-alpha.17"."futures_util_preview"}" deps)
    (features_.num_cpus."${deps."futures_executor_preview"."0.3.0-alpha.17"."num_cpus"}" deps)
  ];


# end
# futures-io-preview-0.3.0-alpha.17

  crates.futures_io_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_io_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-io-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "1v70rdfgyxjnab09rnbkfdi3hn2nxw47wynvcs0k0s8pmdzb6q5l";
    libName = "futures_io";
    features = mkFeatures (features."futures_io_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_io_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_io_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".default = (f.futures_io_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".std =
        (f.futures_io_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_io_preview."0.3.0-alpha.17".default or false) ||
        (futures_io_preview."0.3.0-alpha.17"."default" or false); }
    ];
  }) [];


# end
# futures-preview-0.3.0-alpha.17

  crates.futures_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "0spldg4593w5p0pq4jb6gg00vldkcf9qr8gydjb04j218n2z7y07";
    libName = "futures";
    dependencies = mapFeatures features ([
      (crates."futures_channel_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_channel_preview"}" deps)
      (crates."futures_core_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
      (crates."futures_executor_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_executor_preview"}" deps)
      (crates."futures_io_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_io_preview"}" deps)
      (crates."futures_sink_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_sink_preview"}" deps)
      (crates."futures_util_preview"."${deps."futures_preview"."0.3.0-alpha.17"."futures_util_preview"}" deps)
    ]);
    features = mkFeatures (features."futures_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_channel_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_channel_preview}"."sink" = true; }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_channel_preview}".default = (f.futures_channel_preview."${deps.futures_preview."0.3.0-alpha.17".futures_channel_preview}".default or false); }
    ];
    futures_core_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" =
        (f.futures_core_preview."${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" or false) ||
        (futures_preview."0.3.0-alpha.17"."alloc" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."alloc" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."cfg-target-has-atomic" =
        (f.futures_core_preview."${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."cfg-target-has-atomic" or false) ||
        (futures_preview."0.3.0-alpha.17"."cfg-target-has-atomic" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."cfg-target-has-atomic" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."nightly" =
        (f.futures_core_preview."${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."nightly" or false) ||
        (futures_preview."0.3.0-alpha.17"."nightly" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."nightly" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."std" =
        (f.futures_core_preview."${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}"."std" or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}".default = (f.futures_core_preview."${deps.futures_preview."0.3.0-alpha.17".futures_core_preview}".default or false); }
    ];
    futures_executor_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_executor_preview}"."std" =
        (f.futures_executor_preview."${deps.futures_preview."0.3.0-alpha.17".futures_executor_preview}"."std" or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_executor_preview}".default = (f.futures_executor_preview."${deps.futures_preview."0.3.0-alpha.17".futures_executor_preview}".default or false); }
    ];
    futures_io_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_io_preview}"."std" =
        (f.futures_io_preview."${deps.futures_preview."0.3.0-alpha.17".futures_io_preview}"."std" or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_io_preview}".default = (f.futures_io_preview."${deps.futures_preview."0.3.0-alpha.17".futures_io_preview}".default or false); }
    ];
    futures_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".alloc =
        (f.futures_preview."0.3.0-alpha.17".alloc or false) ||
        (f.futures_preview."0.3.0-alpha.17".std or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".compat =
        (f.futures_preview."0.3.0-alpha.17".compat or false) ||
        (f.futures_preview."0.3.0-alpha.17".io-compat or false) ||
        (futures_preview."0.3.0-alpha.17"."io-compat" or false); }
      { "0.3.0-alpha.17".default = (f.futures_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".std =
        (f.futures_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_preview."0.3.0-alpha.17".compat or false) ||
        (futures_preview."0.3.0-alpha.17"."compat" or false) ||
        (f.futures_preview."0.3.0-alpha.17".default or false) ||
        (futures_preview."0.3.0-alpha.17"."default" or false); }
    ];
    futures_sink_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}"."alloc" =
        (f.futures_sink_preview."${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}"."alloc" or false) ||
        (futures_preview."0.3.0-alpha.17"."alloc" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."alloc" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}"."std" =
        (f.futures_sink_preview."${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}"."std" or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}".default = (f.futures_sink_preview."${deps.futures_preview."0.3.0-alpha.17".futures_sink_preview}".default or false); }
    ];
    futures_util_preview = fold recursiveUpdate {} [
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."alloc" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."alloc" or false) ||
        (futures_preview."0.3.0-alpha.17"."alloc" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."alloc" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."async-await" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."async-await" or false) ||
        (futures_preview."0.3.0-alpha.17"."async-await" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."async-await" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."cfg-target-has-atomic" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."cfg-target-has-atomic" or false) ||
        (futures_preview."0.3.0-alpha.17"."cfg-target-has-atomic" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."cfg-target-has-atomic" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."compat" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."compat" or false) ||
        (futures_preview."0.3.0-alpha.17"."compat" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."compat" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."io-compat" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."io-compat" or false) ||
        (futures_preview."0.3.0-alpha.17"."io-compat" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."io-compat" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."nightly" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."nightly" or false) ||
        (futures_preview."0.3.0-alpha.17"."nightly" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."nightly" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."sink" = true; }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."std" =
        (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}"."std" or false) ||
        (futures_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}".default = (f.futures_util_preview."${deps.futures_preview."0.3.0-alpha.17".futures_util_preview}".default or false); }
    ];
  }) [
    (features_.futures_channel_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_channel_preview"}" deps)
    (features_.futures_core_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    (features_.futures_executor_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_executor_preview"}" deps)
    (features_.futures_io_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_io_preview"}" deps)
    (features_.futures_sink_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_sink_preview"}" deps)
    (features_.futures_util_preview."${deps."futures_preview"."0.3.0-alpha.17"."futures_util_preview"}" deps)
  ];


# end
# futures-sink-preview-0.3.0-alpha.17

  crates.futures_sink_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_sink_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-sink-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "0jhfwmgn884d794invid458jcdnfp3xl46h36y3xaqy2cp8bk59d";
    libName = "futures_sink";
    dependencies = mapFeatures features ([
      (crates."futures_core_preview"."${deps."futures_sink_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    ]);
    features = mkFeatures (features."futures_sink_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_sink_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_core_preview = fold recursiveUpdate {} [
      { "${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" =
        (f.futures_core_preview."${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" or false) ||
        (futures_sink_preview."0.3.0-alpha.17"."alloc" or false) ||
        (f."futures_sink_preview"."0.3.0-alpha.17"."alloc" or false); }
      { "${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}"."std" =
        (f.futures_core_preview."${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}"."std" or false) ||
        (futures_sink_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_sink_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}".default = (f.futures_core_preview."${deps.futures_sink_preview."0.3.0-alpha.17".futures_core_preview}".default or false); }
    ];
    futures_sink_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".alloc =
        (f.futures_sink_preview."0.3.0-alpha.17".alloc or false) ||
        (f.futures_sink_preview."0.3.0-alpha.17".std or false) ||
        (futures_sink_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".default = (f.futures_sink_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".std =
        (f.futures_sink_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_sink_preview."0.3.0-alpha.17".default or false) ||
        (futures_sink_preview."0.3.0-alpha.17"."default" or false); }
    ];
  }) [
    (features_.futures_core_preview."${deps."futures_sink_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
  ];


# end
# futures-timer-0.2.1

  crates.futures_timer."0.2.1" = deps: { features?(features_.futures_timer."0.2.1" deps {}) }: buildRustCrate {
    crateName = "futures-timer";
    version = "0.2.1";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "010ayr50mvq4d64sajvxiprm594imrs1nxf8kqpa9q81cbslim5b";
    dependencies = mapFeatures features ([
      (crates."futures_preview"."${deps."futures_timer"."0.2.1"."futures_preview"}" deps)
      (crates."pin_utils"."${deps."futures_timer"."0.2.1"."pin_utils"}" deps)
    ]);
  };
  features_.futures_timer."0.2.1" = deps: f: updateFeatures f (rec {
    futures_preview."${deps.futures_timer."0.2.1".futures_preview}".default = true;
    futures_timer."0.2.1".default = (f.futures_timer."0.2.1".default or true);
    pin_utils."${deps.futures_timer."0.2.1".pin_utils}".default = true;
  }) [
    (features_.futures_preview."${deps."futures_timer"."0.2.1"."futures_preview"}" deps)
    (features_.pin_utils."${deps."futures_timer"."0.2.1"."pin_utils"}" deps)
  ];


# end
# futures-util-preview-0.3.0-alpha.17

  crates.futures_util_preview."0.3.0-alpha.17" = deps: { features?(features_.futures_util_preview."0.3.0-alpha.17" deps {}) }: buildRustCrate {
    crateName = "futures-util-preview";
    version = "0.3.0-alpha.17";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "0bybz01rk7czx48hp1zs1vw3v0n4yv0vcrcmxby0lhdj9fsh7v0m";
    libName = "futures_util";
    dependencies = mapFeatures features ([
      (crates."futures_core_preview"."${deps."futures_util_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
      (crates."pin_utils"."${deps."futures_util_preview"."0.3.0-alpha.17"."pin_utils"}" deps)
    ]
      ++ (if features.futures_util_preview."0.3.0-alpha.17".futures-channel-preview or false then [ (crates.futures_channel_preview."${deps."futures_util_preview"."0.3.0-alpha.17".futures_channel_preview}" deps) ] else [])
      ++ (if features.futures_util_preview."0.3.0-alpha.17".futures-io-preview or false then [ (crates.futures_io_preview."${deps."futures_util_preview"."0.3.0-alpha.17".futures_io_preview}" deps) ] else [])
      ++ (if features.futures_util_preview."0.3.0-alpha.17".futures-sink-preview or false then [ (crates.futures_sink_preview."${deps."futures_util_preview"."0.3.0-alpha.17".futures_sink_preview}" deps) ] else [])
      ++ (if features.futures_util_preview."0.3.0-alpha.17".memchr or false then [ (crates.memchr."${deps."futures_util_preview"."0.3.0-alpha.17".memchr}" deps) ] else [])
      ++ (if features.futures_util_preview."0.3.0-alpha.17".slab or false then [ (crates.slab."${deps."futures_util_preview"."0.3.0-alpha.17".slab}" deps) ] else []));
    features = mkFeatures (features."futures_util_preview"."0.3.0-alpha.17" or {});
  };
  features_.futures_util_preview."0.3.0-alpha.17" = deps: f: updateFeatures f (rec {
    futures_channel_preview = fold recursiveUpdate {} [
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_channel_preview}"."std" = true; }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_channel_preview}".default = (f.futures_channel_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_channel_preview}".default or false); }
    ];
    futures_core_preview = fold recursiveUpdate {} [
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" =
        (f.futures_core_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."alloc" or false) ||
        (futures_util_preview."0.3.0-alpha.17"."alloc" or false) ||
        (f."futures_util_preview"."0.3.0-alpha.17"."alloc" or false); }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."cfg-target-has-atomic" =
        (f.futures_core_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."cfg-target-has-atomic" or false) ||
        (futures_util_preview."0.3.0-alpha.17"."cfg-target-has-atomic" or false) ||
        (f."futures_util_preview"."0.3.0-alpha.17"."cfg-target-has-atomic" or false); }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."nightly" =
        (f.futures_core_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."nightly" or false) ||
        (futures_util_preview."0.3.0-alpha.17"."nightly" or false) ||
        (f."futures_util_preview"."0.3.0-alpha.17"."nightly" or false); }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."std" =
        (f.futures_core_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}"."std" or false) ||
        (futures_util_preview."0.3.0-alpha.17"."std" or false) ||
        (f."futures_util_preview"."0.3.0-alpha.17"."std" or false); }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}".default = (f.futures_core_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_core_preview}".default or false); }
    ];
    futures_io_preview = fold recursiveUpdate {} [
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_io_preview}"."std" = true; }
      { "${deps.futures_util_preview."0.3.0-alpha.17".futures_io_preview}".default = (f.futures_io_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_io_preview}".default or false); }
    ];
    futures_sink_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_sink_preview}".default = (f.futures_sink_preview."${deps.futures_util_preview."0.3.0-alpha.17".futures_sink_preview}".default or false);
    futures_util_preview = fold recursiveUpdate {} [
      { "0.3.0-alpha.17".alloc =
        (f.futures_util_preview."0.3.0-alpha.17".alloc or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".std or false) ||
        (futures_util_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".async-await =
        (f.futures_util_preview."0.3.0-alpha.17".async-await or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".select-macro or false) ||
        (futures_util_preview."0.3.0-alpha.17"."select-macro" or false); }
      { "0.3.0-alpha.17".compat =
        (f.futures_util_preview."0.3.0-alpha.17".compat or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io-compat or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io-compat" or false); }
      { "0.3.0-alpha.17".default = (f.futures_util_preview."0.3.0-alpha.17".default or true); }
      { "0.3.0-alpha.17".futures-channel-preview =
        (f.futures_util_preview."0.3.0-alpha.17".futures-channel-preview or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".channel or false) ||
        (futures_util_preview."0.3.0-alpha.17"."channel" or false); }
      { "0.3.0-alpha.17".futures-io-preview =
        (f.futures_util_preview."0.3.0-alpha.17".futures-io-preview or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io" or false); }
      { "0.3.0-alpha.17".futures-select-macro-preview =
        (f.futures_util_preview."0.3.0-alpha.17".futures-select-macro-preview or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".select-macro or false) ||
        (futures_util_preview."0.3.0-alpha.17"."select-macro" or false); }
      { "0.3.0-alpha.17".futures-sink-preview =
        (f.futures_util_preview."0.3.0-alpha.17".futures-sink-preview or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".sink or false) ||
        (futures_util_preview."0.3.0-alpha.17"."sink" or false); }
      { "0.3.0-alpha.17".futures_01 =
        (f.futures_util_preview."0.3.0-alpha.17".futures_01 or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".compat or false) ||
        (futures_util_preview."0.3.0-alpha.17"."compat" or false); }
      { "0.3.0-alpha.17".io =
        (f.futures_util_preview."0.3.0-alpha.17".io or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io-compat or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io-compat" or false); }
      { "0.3.0-alpha.17".memchr =
        (f.futures_util_preview."0.3.0-alpha.17".memchr or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io" or false); }
      { "0.3.0-alpha.17".proc-macro-hack =
        (f.futures_util_preview."0.3.0-alpha.17".proc-macro-hack or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".select-macro or false) ||
        (futures_util_preview."0.3.0-alpha.17"."select-macro" or false); }
      { "0.3.0-alpha.17".proc-macro-nested =
        (f.futures_util_preview."0.3.0-alpha.17".proc-macro-nested or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".select-macro or false) ||
        (futures_util_preview."0.3.0-alpha.17"."select-macro" or false); }
      { "0.3.0-alpha.17".rand =
        (f.futures_util_preview."0.3.0-alpha.17".rand or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".select-macro or false) ||
        (futures_util_preview."0.3.0-alpha.17"."select-macro" or false); }
      { "0.3.0-alpha.17".slab =
        (f.futures_util_preview."0.3.0-alpha.17".slab or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".std or false) ||
        (futures_util_preview."0.3.0-alpha.17"."std" or false); }
      { "0.3.0-alpha.17".std =
        (f.futures_util_preview."0.3.0-alpha.17".std or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".async-await or false) ||
        (futures_util_preview."0.3.0-alpha.17"."async-await" or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".channel or false) ||
        (futures_util_preview."0.3.0-alpha.17"."channel" or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".compat or false) ||
        (futures_util_preview."0.3.0-alpha.17"."compat" or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".default or false) ||
        (futures_util_preview."0.3.0-alpha.17"."default" or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io" or false); }
      { "0.3.0-alpha.17".tokio-io =
        (f.futures_util_preview."0.3.0-alpha.17".tokio-io or false) ||
        (f.futures_util_preview."0.3.0-alpha.17".io-compat or false) ||
        (futures_util_preview."0.3.0-alpha.17"."io-compat" or false); }
    ];
    memchr."${deps.futures_util_preview."0.3.0-alpha.17".memchr}".default = true;
    pin_utils."${deps.futures_util_preview."0.3.0-alpha.17".pin_utils}".default = true;
    slab."${deps.futures_util_preview."0.3.0-alpha.17".slab}".default = true;
  }) [
    (features_.futures_channel_preview."${deps."futures_util_preview"."0.3.0-alpha.17"."futures_channel_preview"}" deps)
    (features_.futures_core_preview."${deps."futures_util_preview"."0.3.0-alpha.17"."futures_core_preview"}" deps)
    (features_.futures_io_preview."${deps."futures_util_preview"."0.3.0-alpha.17"."futures_io_preview"}" deps)
    (features_.futures_sink_preview."${deps."futures_util_preview"."0.3.0-alpha.17"."futures_sink_preview"}" deps)
    (features_.memchr."${deps."futures_util_preview"."0.3.0-alpha.17"."memchr"}" deps)
    (features_.pin_utils."${deps."futures_util_preview"."0.3.0-alpha.17"."pin_utils"}" deps)
    (features_.slab."${deps."futures_util_preview"."0.3.0-alpha.17"."slab"}" deps)
  ];


# end
# glob-0.3.0

  crates.glob."0.3.0" = deps: { features?(features_.glob."0.3.0" deps {}) }: buildRustCrate {
    crateName = "glob";
    version = "0.3.0";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1b3dc2686xnrpxwx4nd3w06f9qs433w6xmmzq6jb76hh95dwwqb2";
  };
  features_.glob."0.3.0" = deps: f: updateFeatures f (rec {
    glob."0.3.0".default = (f.glob."0.3.0".default or true);
  }) [];


# end
# heim-0.0.5

  crates.heim."0.0.5" = deps: { features?(features_.heim."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1x01id7q9jpykhfks4j69s2qris4zc815apzlbfm62my1kf9s551";
    dependencies = mapFeatures features ([
      (crates."heim_common"."${deps."heim"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim"."0.0.5"."heim_derive"}" deps)
    ]
      ++ (if features.heim."0.0.5".heim-cpu or false then [ (crates.heim_cpu."${deps."heim"."0.0.5".heim_cpu}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-disk or false then [ (crates.heim_disk."${deps."heim"."0.0.5".heim_disk}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-host or false then [ (crates.heim_host."${deps."heim"."0.0.5".heim_host}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-memory or false then [ (crates.heim_memory."${deps."heim"."0.0.5".heim_memory}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-net or false then [ (crates.heim_net."${deps."heim"."0.0.5".heim_net}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-process or false then [ (crates.heim_process."${deps."heim"."0.0.5".heim_process}" deps) ] else [])
      ++ (if features.heim."0.0.5".heim-virt or false then [ (crates.heim_virt."${deps."heim"."0.0.5".heim_virt}" deps) ] else []));
    features = mkFeatures (features."heim"."0.0.5" or {});
  };
  features_.heim."0.0.5" = deps: f: updateFeatures f (rec {
    heim = fold recursiveUpdate {} [
      { "0.0.5".cpu =
        (f.heim."0.0.5".cpu or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".default = (f.heim."0.0.5".default or true); }
      { "0.0.5".disk =
        (f.heim."0.0.5".disk or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".heim-cpu =
        (f.heim."0.0.5".heim-cpu or false) ||
        (f.heim."0.0.5".cpu or false) ||
        (heim."0.0.5"."cpu" or false); }
      { "0.0.5".heim-disk =
        (f.heim."0.0.5".heim-disk or false) ||
        (f.heim."0.0.5".disk or false) ||
        (heim."0.0.5"."disk" or false); }
      { "0.0.5".heim-host =
        (f.heim."0.0.5".heim-host or false) ||
        (f.heim."0.0.5".host or false) ||
        (heim."0.0.5"."host" or false); }
      { "0.0.5".heim-memory =
        (f.heim."0.0.5".heim-memory or false) ||
        (f.heim."0.0.5".memory or false) ||
        (heim."0.0.5"."memory" or false); }
      { "0.0.5".heim-net =
        (f.heim."0.0.5".heim-net or false) ||
        (f.heim."0.0.5".net or false) ||
        (heim."0.0.5"."net" or false); }
      { "0.0.5".heim-process =
        (f.heim."0.0.5".heim-process or false) ||
        (f.heim."0.0.5".process or false) ||
        (heim."0.0.5"."process" or false); }
      { "0.0.5".heim-virt =
        (f.heim."0.0.5".heim-virt or false) ||
        (f.heim."0.0.5".virt or false) ||
        (heim."0.0.5"."virt" or false); }
      { "0.0.5".host =
        (f.heim."0.0.5".host or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".memory =
        (f.heim."0.0.5".memory or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".net =
        (f.heim."0.0.5".net or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".process =
        (f.heim."0.0.5".process or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
      { "0.0.5".virt =
        (f.heim."0.0.5".virt or false) ||
        (f.heim."0.0.5".default or false) ||
        (heim."0.0.5"."default" or false); }
    ];
    heim_common."${deps.heim."0.0.5".heim_common}".default = true;
    heim_cpu."${deps.heim."0.0.5".heim_cpu}".default = true;
    heim_derive."${deps.heim."0.0.5".heim_derive}".default = true;
    heim_disk."${deps.heim."0.0.5".heim_disk}".default = true;
    heim_host."${deps.heim."0.0.5".heim_host}".default = true;
    heim_memory."${deps.heim."0.0.5".heim_memory}".default = true;
    heim_net."${deps.heim."0.0.5".heim_net}".default = true;
    heim_process."${deps.heim."0.0.5".heim_process}".default = true;
    heim_virt."${deps.heim."0.0.5".heim_virt}".default = true;
  }) [
    (features_.heim_common."${deps."heim"."0.0.5"."heim_common"}" deps)
    (features_.heim_cpu."${deps."heim"."0.0.5"."heim_cpu"}" deps)
    (features_.heim_derive."${deps."heim"."0.0.5"."heim_derive"}" deps)
    (features_.heim_disk."${deps."heim"."0.0.5"."heim_disk"}" deps)
    (features_.heim_host."${deps."heim"."0.0.5"."heim_host"}" deps)
    (features_.heim_memory."${deps."heim"."0.0.5"."heim_memory"}" deps)
    (features_.heim_net."${deps."heim"."0.0.5"."heim_net"}" deps)
    (features_.heim_process."${deps."heim"."0.0.5"."heim_process"}" deps)
    (features_.heim_virt."${deps."heim"."0.0.5"."heim_virt"}" deps)
  ];


# end
# heim-common-0.0.5

  crates.heim_common."0.0.5" = deps: { features?(features_.heim_common."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-common";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "19b80nis9s0pizyy4838wq1pz5kfmmn0fazblrkmydq7k52223l0";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_common"."0.0.5"."cfg_if"}" deps)
      (crates."futures_preview"."${deps."heim_common"."0.0.5"."futures_preview"}" deps)
      (crates."heim_derive"."${deps."heim_common"."0.0.5"."heim_derive"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."core_foundation"."${deps."heim_common"."0.0.5"."core_foundation"}" deps)
      (crates."mach"."${deps."heim_common"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."heim_common"."0.0.5"."winapi"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."heim_common"."0.0.5"."libc"}" deps)
      (crates."nix"."${deps."heim_common"."0.0.5"."nix"}" deps)
    ]) else []);
  };
  features_.heim_common."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_common."0.0.5".cfg_if}".default = true;
    core_foundation."${deps.heim_common."0.0.5".core_foundation}".default = true;
    futures_preview."${deps.heim_common."0.0.5".futures_preview}".default = true;
    heim_common."0.0.5".default = (f.heim_common."0.0.5".default or true);
    heim_derive."${deps.heim_common."0.0.5".heim_derive}".default = true;
    libc."${deps.heim_common."0.0.5".libc}".default = true;
    mach."${deps.heim_common."0.0.5".mach}".default = true;
    nix."${deps.heim_common."0.0.5".nix}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_common."0.0.5".winapi}"."libloaderapi" = true; }
      { "${deps.heim_common."0.0.5".winapi}"."minwindef" = true; }
      { "${deps.heim_common."0.0.5".winapi}"."winnt" = true; }
      { "${deps.heim_common."0.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."heim_common"."0.0.5"."cfg_if"}" deps)
    (features_.futures_preview."${deps."heim_common"."0.0.5"."futures_preview"}" deps)
    (features_.heim_derive."${deps."heim_common"."0.0.5"."heim_derive"}" deps)
    (features_.core_foundation."${deps."heim_common"."0.0.5"."core_foundation"}" deps)
    (features_.mach."${deps."heim_common"."0.0.5"."mach"}" deps)
    (features_.winapi."${deps."heim_common"."0.0.5"."winapi"}" deps)
    (features_.libc."${deps."heim_common"."0.0.5"."libc"}" deps)
    (features_.nix."${deps."heim_common"."0.0.5"."nix"}" deps)
  ];


# end
# heim-cpu-0.0.5

  crates.heim_cpu."0.0.5" = deps: { features?(features_.heim_cpu."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-cpu";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1fc115by6z58fflss6j095xji0z10apwww3mvkzgj66cbd7n9ci3";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_cpu"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_cpu"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_cpu"."0.0.5"."heim_derive"}" deps)
      (crates."lazy_static"."${deps."heim_cpu"."0.0.5"."lazy_static"}" deps)
    ])
      ++ (if kernel == "linux" then mapFeatures features ([
      (crates."glob"."${deps."heim_cpu"."0.0.5"."glob"}" deps)
      (crates."libc"."${deps."heim_cpu"."0.0.5"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."libc"."${deps."heim_cpu"."0.0.5"."libc"}" deps)
      (crates."mach"."${deps."heim_cpu"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."heim_cpu"."0.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.heim_cpu."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_cpu."0.0.5".cfg_if}".default = true;
    glob."${deps.heim_cpu."0.0.5".glob}".default = true;
    heim_common."${deps.heim_cpu."0.0.5".heim_common}".default = true;
    heim_cpu."0.0.5".default = (f.heim_cpu."0.0.5".default or true);
    heim_derive."${deps.heim_cpu."0.0.5".heim_derive}".default = true;
    lazy_static."${deps.heim_cpu."0.0.5".lazy_static}".default = true;
    libc."${deps.heim_cpu."0.0.5".libc}".default = true;
    mach."${deps.heim_cpu."0.0.5".mach}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_cpu."0.0.5".winapi}"."impl-default" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}"."powerbase" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}"."processthreadsapi" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}"."sysinfoapi" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}"."winbase" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}"."winnt" = true; }
      { "${deps.heim_cpu."0.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."heim_cpu"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_cpu"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_cpu"."0.0.5"."heim_derive"}" deps)
    (features_.lazy_static."${deps."heim_cpu"."0.0.5"."lazy_static"}" deps)
    (features_.glob."${deps."heim_cpu"."0.0.5"."glob"}" deps)
    (features_.libc."${deps."heim_cpu"."0.0.5"."libc"}" deps)
    (features_.libc."${deps."heim_cpu"."0.0.5"."libc"}" deps)
    (features_.mach."${deps."heim_cpu"."0.0.5"."mach"}" deps)
    (features_.winapi."${deps."heim_cpu"."0.0.5"."winapi"}" deps)
  ];


# end
# heim-derive-0.0.5

  crates.heim_derive."0.0.5" = deps: { features?(features_.heim_derive."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-derive";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1mx70ln1j3hic8j1yg97wp63r757dhxxkjdmjj7gyw7v2mfbkcx3";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."heim_derive"."0.0.5"."proc_macro2"}" deps)
      (crates."quote"."${deps."heim_derive"."0.0.5"."quote"}" deps)
      (crates."syn"."${deps."heim_derive"."0.0.5"."syn"}" deps)
    ]);
  };
  features_.heim_derive."0.0.5" = deps: f: updateFeatures f (rec {
    heim_derive."0.0.5".default = (f.heim_derive."0.0.5".default or true);
    proc_macro2."${deps.heim_derive."0.0.5".proc_macro2}".default = true;
    quote."${deps.heim_derive."0.0.5".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.heim_derive."0.0.5".syn}"."clone-impls" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."derive" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."extra-traits" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."full" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."parsing" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."printing" = true; }
      { "${deps.heim_derive."0.0.5".syn}"."proc-macro" = true; }
      { "${deps.heim_derive."0.0.5".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."heim_derive"."0.0.5"."proc_macro2"}" deps)
    (features_.quote."${deps."heim_derive"."0.0.5"."quote"}" deps)
    (features_.syn."${deps."heim_derive"."0.0.5"."syn"}" deps)
  ];


# end
# heim-disk-0.0.5

  crates.heim_disk."0.0.5" = deps: { features?(features_.heim_disk."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-disk";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1fs0kyi49rndnw5clykhcp4pw3fkac2z3scb24nlhcg76visvh15";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."heim_disk"."0.0.5"."bitflags"}" deps)
      (crates."cfg_if"."${deps."heim_disk"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_disk"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_disk"."0.0.5"."heim_derive"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."core_foundation"."${deps."heim_disk"."0.0.5"."core_foundation"}" deps)
      (crates."mach"."${deps."heim_disk"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."widestring"."${deps."heim_disk"."0.0.5"."widestring"}" deps)
      (crates."winapi"."${deps."heim_disk"."0.0.5"."winapi"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."heim_disk"."0.0.5"."libc"}" deps)
    ]) else []);
  };
  features_.heim_disk."0.0.5" = deps: f: updateFeatures f (rec {
    bitflags."${deps.heim_disk."0.0.5".bitflags}".default = true;
    cfg_if."${deps.heim_disk."0.0.5".cfg_if}".default = true;
    core_foundation."${deps.heim_disk."0.0.5".core_foundation}".default = true;
    heim_common."${deps.heim_disk."0.0.5".heim_common}".default = true;
    heim_derive."${deps.heim_disk."0.0.5".heim_derive}".default = true;
    heim_disk."0.0.5".default = (f.heim_disk."0.0.5".default or true);
    libc."${deps.heim_disk."0.0.5".libc}".default = true;
    mach."${deps.heim_disk."0.0.5".mach}".default = true;
    widestring."${deps.heim_disk."0.0.5".widestring}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_disk."0.0.5".winapi}"."errhandlingapi" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."fileapi" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."handleapi" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."impl-default" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."ioapiset" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."ntdef" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."std" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."winbase" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."winerror" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."winioctl" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."winnt" = true; }
      { "${deps.heim_disk."0.0.5".winapi}"."ws2def" = true; }
      { "${deps.heim_disk."0.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.bitflags."${deps."heim_disk"."0.0.5"."bitflags"}" deps)
    (features_.cfg_if."${deps."heim_disk"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_disk"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_disk"."0.0.5"."heim_derive"}" deps)
    (features_.core_foundation."${deps."heim_disk"."0.0.5"."core_foundation"}" deps)
    (features_.mach."${deps."heim_disk"."0.0.5"."mach"}" deps)
    (features_.widestring."${deps."heim_disk"."0.0.5"."widestring"}" deps)
    (features_.winapi."${deps."heim_disk"."0.0.5"."winapi"}" deps)
    (features_.libc."${deps."heim_disk"."0.0.5"."libc"}" deps)
  ];


# end
# heim-host-0.0.5

  crates.heim_host."0.0.5" = deps: { features?(features_.heim_host."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-host";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1cdsnqi163hddmckbz1wncwb10zsbip3i23sr2y8w187f17fjara";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_host"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_host"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_host"."0.0.5"."heim_derive"}" deps)
      (crates."libc"."${deps."heim_host"."0.0.5"."libc"}" deps)
      (crates."platforms"."${deps."heim_host"."0.0.5"."platforms"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."lazy_static"."${deps."heim_host"."0.0.5"."lazy_static"}" deps)
      (crates."mach"."${deps."heim_host"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."heim_host"."0.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.heim_host."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_host."0.0.5".cfg_if}".default = true;
    heim_common."${deps.heim_host."0.0.5".heim_common}".default = true;
    heim_derive."${deps.heim_host."0.0.5".heim_derive}".default = true;
    heim_host."0.0.5".default = (f.heim_host."0.0.5".default or true);
    lazy_static."${deps.heim_host."0.0.5".lazy_static}".default = true;
    libc."${deps.heim_host."0.0.5".libc}".default = true;
    mach."${deps.heim_host."0.0.5".mach}".default = true;
    platforms."${deps.heim_host."0.0.5".platforms}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_host."0.0.5".winapi}"."libloaderapi" = true; }
      { "${deps.heim_host."0.0.5".winapi}"."minwindef" = true; }
      { "${deps.heim_host."0.0.5".winapi}"."ntdef" = true; }
      { "${deps.heim_host."0.0.5".winapi}"."sysinfoapi" = true; }
      { "${deps.heim_host."0.0.5".winapi}"."winnt" = true; }
      { "${deps.heim_host."0.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."heim_host"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_host"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_host"."0.0.5"."heim_derive"}" deps)
    (features_.libc."${deps."heim_host"."0.0.5"."libc"}" deps)
    (features_.platforms."${deps."heim_host"."0.0.5"."platforms"}" deps)
    (features_.lazy_static."${deps."heim_host"."0.0.5"."lazy_static"}" deps)
    (features_.mach."${deps."heim_host"."0.0.5"."mach"}" deps)
    (features_.winapi."${deps."heim_host"."0.0.5"."winapi"}" deps)
  ];


# end
# heim-memory-0.0.5

  crates.heim_memory."0.0.5" = deps: { features?(features_.heim_memory."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-memory";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1irpgmdawbx31ixv9qfcng48a9lh8f9qhdzi56h6kvkxn7ibk307";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_memory"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_memory"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_memory"."0.0.5"."heim_derive"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."lazy_static"."${deps."heim_memory"."0.0.5"."lazy_static"}" deps)
      (crates."libc"."${deps."heim_memory"."0.0.5"."libc"}" deps)
      (crates."mach"."${deps."heim_memory"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."libc"."${deps."heim_memory"."0.0.5"."libc"}" deps)
      (crates."winapi"."${deps."heim_memory"."0.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.heim_memory."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_memory."0.0.5".cfg_if}".default = true;
    heim_common."${deps.heim_memory."0.0.5".heim_common}".default = true;
    heim_derive."${deps.heim_memory."0.0.5".heim_derive}".default = true;
    heim_memory."0.0.5".default = (f.heim_memory."0.0.5".default or true);
    lazy_static."${deps.heim_memory."0.0.5".lazy_static}".default = true;
    libc."${deps.heim_memory."0.0.5".libc}".default = true;
    mach."${deps.heim_memory."0.0.5".mach}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_memory."0.0.5".winapi}"."minwindef" = true; }
      { "${deps.heim_memory."0.0.5".winapi}"."sysinfoapi" = true; }
      { "${deps.heim_memory."0.0.5".winapi}".default = (f.winapi."${deps.heim_memory."0.0.5".winapi}".default or false); }
    ];
  }) [
    (features_.cfg_if."${deps."heim_memory"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_memory"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_memory"."0.0.5"."heim_derive"}" deps)
    (features_.lazy_static."${deps."heim_memory"."0.0.5"."lazy_static"}" deps)
    (features_.libc."${deps."heim_memory"."0.0.5"."libc"}" deps)
    (features_.mach."${deps."heim_memory"."0.0.5"."mach"}" deps)
    (features_.libc."${deps."heim_memory"."0.0.5"."libc"}" deps)
    (features_.winapi."${deps."heim_memory"."0.0.5"."winapi"}" deps)
  ];


# end
# heim-net-0.0.5

  crates.heim_net."0.0.5" = deps: { features?(features_.heim_net."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-net";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1grav3cv3qc9kslk40aaj0lg9xk0888vx1fpsdjvb8cw4r6wd2xk";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."heim_net"."0.0.5"."bitflags"}" deps)
      (crates."cfg_if"."${deps."heim_net"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_net"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_net"."0.0.5"."heim_derive"}" deps)
      (crates."libc"."${deps."heim_net"."0.0.5"."libc"}" deps)
      (crates."macaddr"."${deps."heim_net"."0.0.5"."macaddr"}" deps)
    ])
      ++ (if kernel == "linux" then mapFeatures features ([
      (crates."hex"."${deps."heim_net"."0.0.5"."hex"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."nix"."${deps."heim_net"."0.0.5"."nix"}" deps)
    ]) else []);
  };
  features_.heim_net."0.0.5" = deps: f: updateFeatures f (rec {
    bitflags."${deps.heim_net."0.0.5".bitflags}".default = true;
    cfg_if."${deps.heim_net."0.0.5".cfg_if}".default = true;
    heim_common."${deps.heim_net."0.0.5".heim_common}".default = true;
    heim_derive."${deps.heim_net."0.0.5".heim_derive}".default = true;
    heim_net."0.0.5".default = (f.heim_net."0.0.5".default or true);
    hex."${deps.heim_net."0.0.5".hex}".default = true;
    libc."${deps.heim_net."0.0.5".libc}".default = true;
    macaddr."${deps.heim_net."0.0.5".macaddr}".default = true;
    nix."${deps.heim_net."0.0.5".nix}".default = true;
  }) [
    (features_.bitflags."${deps."heim_net"."0.0.5"."bitflags"}" deps)
    (features_.cfg_if."${deps."heim_net"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_net"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_net"."0.0.5"."heim_derive"}" deps)
    (features_.libc."${deps."heim_net"."0.0.5"."libc"}" deps)
    (features_.macaddr."${deps."heim_net"."0.0.5"."macaddr"}" deps)
    (features_.hex."${deps."heim_net"."0.0.5"."hex"}" deps)
    (features_.nix."${deps."heim_net"."0.0.5"."nix"}" deps)
  ];


# end
# heim-process-0.0.5

  crates.heim_process."0.0.5" = deps: { features?(features_.heim_process."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-process";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "15rmbars554r3pirgk4vr3hxsy0wvnikr08byx4ba8ir4wa0jfyd";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_process"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_process"."0.0.5"."heim_common"}" deps)
      (crates."heim_derive"."${deps."heim_process"."0.0.5"."heim_derive"}" deps)
      (crates."libc"."${deps."heim_process"."0.0.5"."libc"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."mach"."${deps."heim_process"."0.0.5"."mach"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."heim_process"."0.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.heim_process."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_process."0.0.5".cfg_if}".default = true;
    heim_common."${deps.heim_process."0.0.5".heim_common}".default = true;
    heim_derive."${deps.heim_process."0.0.5".heim_derive}".default = true;
    heim_process."0.0.5".default = (f.heim_process."0.0.5".default or true);
    libc."${deps.heim_process."0.0.5".libc}".default = true;
    mach."${deps.heim_process."0.0.5".mach}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.heim_process."0.0.5".winapi}"."handleapi" = true; }
      { "${deps.heim_process."0.0.5".winapi}"."minwindef" = true; }
      { "${deps.heim_process."0.0.5".winapi}"."processthreadsapi" = true; }
      { "${deps.heim_process."0.0.5".winapi}"."psapi" = true; }
      { "${deps.heim_process."0.0.5".winapi}"."winerror" = true; }
      { "${deps.heim_process."0.0.5".winapi}"."winnt" = true; }
      { "${deps.heim_process."0.0.5".winapi}".default = (f.winapi."${deps.heim_process."0.0.5".winapi}".default or false); }
    ];
  }) [
    (features_.cfg_if."${deps."heim_process"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_process"."0.0.5"."heim_common"}" deps)
    (features_.heim_derive."${deps."heim_process"."0.0.5"."heim_derive"}" deps)
    (features_.libc."${deps."heim_process"."0.0.5"."libc"}" deps)
    (features_.mach."${deps."heim_process"."0.0.5"."mach"}" deps)
    (features_.winapi."${deps."heim_process"."0.0.5"."winapi"}" deps)
  ];


# end
# heim-virt-0.0.5

  crates.heim_virt."0.0.5" = deps: { features?(features_.heim_virt."0.0.5" deps {}) }: buildRustCrate {
    crateName = "heim-virt";
    version = "0.0.5";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "1i5na4lvak4p96a5n5diavn2ab1sp14wc3xzd5jmyc9abqg15rii";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."heim_virt"."0.0.5"."cfg_if"}" deps)
      (crates."heim_common"."${deps."heim_virt"."0.0.5"."heim_common"}" deps)
    ])
      ++ (if kernel == "linux" then mapFeatures features ([
      (crates."raw_cpuid"."${deps."heim_virt"."0.0.5"."raw_cpuid"}" deps)
    ]) else []);
  };
  features_.heim_virt."0.0.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.heim_virt."0.0.5".cfg_if}".default = true;
    heim_common."${deps.heim_virt."0.0.5".heim_common}".default = true;
    heim_virt."0.0.5".default = (f.heim_virt."0.0.5".default or true);
    raw_cpuid."${deps.heim_virt."0.0.5".raw_cpuid}".default = true;
  }) [
    (features_.cfg_if."${deps."heim_virt"."0.0.5"."cfg_if"}" deps)
    (features_.heim_common."${deps."heim_virt"."0.0.5"."heim_common"}" deps)
    (features_.raw_cpuid."${deps."heim_virt"."0.0.5"."raw_cpuid"}" deps)
  ];


# end
# hex-0.3.2

  crates.hex."0.3.2" = deps: { features?(features_.hex."0.3.2" deps {}) }: buildRustCrate {
    crateName = "hex";
    version = "0.3.2";
    authors = [ "KokaKiwi <kokakiwi@kokakiwi.net>" ];
    sha256 = "0hs0xfb4x67y4ss9mmbjmibkwakbn3xf23i21m409bw2zqk9b6kz";
    features = mkFeatures (features."hex"."0.3.2" or {});
  };
  features_.hex."0.3.2" = deps: f: updateFeatures f (rec {
    hex."0.3.2".default = (f.hex."0.3.2".default or true);
  }) [];


# end
# iovec-0.1.2

  crates.iovec."0.1.2" = deps: { features?(features_.iovec."0.1.2" deps {}) }: buildRustCrate {
    crateName = "iovec";
    version = "0.1.2";
    authors = [ "Carl Lerche <me@carllerche.com>" ];
    sha256 = "0vjymmb7wj4v4kza5jjn48fcdb85j3k37y7msjl3ifz0p9yiyp2r";
    dependencies = (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."iovec"."0.1.2"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."iovec"."0.1.2"."winapi"}" deps)
    ]) else []);
  };
  features_.iovec."0.1.2" = deps: f: updateFeatures f (rec {
    iovec."0.1.2".default = (f.iovec."0.1.2".default or true);
    libc."${deps.iovec."0.1.2".libc}".default = true;
    winapi."${deps.iovec."0.1.2".winapi}".default = true;
  }) [
    (features_.libc."${deps."iovec"."0.1.2"."libc"}" deps)
    (features_.winapi."${deps."iovec"."0.1.2"."winapi"}" deps)
  ];


# end
# js-sys-0.3.25

  crates.js_sys."0.3.25" = deps: { features?(features_.js_sys."0.3.25" deps {}) }: buildRustCrate {
    crateName = "js-sys";
    version = "0.3.25";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "1qg15xiqy2ig1g3k85qphyhs2s0rdr3a0pdv94il04jk7604dl3q";
    dependencies = mapFeatures features ([
      (crates."wasm_bindgen"."${deps."js_sys"."0.3.25"."wasm_bindgen"}" deps)
    ])
      ++ (if cpu == "wasm32" then mapFeatures features ([
]) else []);
  };
  features_.js_sys."0.3.25" = deps: f: updateFeatures f (rec {
    js_sys."0.3.25".default = (f.js_sys."0.3.25".default or true);
    wasm_bindgen."${deps.js_sys."0.3.25".wasm_bindgen}".default = true;
  }) [
    (features_.wasm_bindgen."${deps."js_sys"."0.3.25"."wasm_bindgen"}" deps)
  ];


# end
# juliex-0.3.0-alpha.7

  crates.juliex."0.3.0-alpha.7" = deps: { features?(features_.juliex."0.3.0-alpha.7" deps {}) }: buildRustCrate {
    crateName = "juliex";
    version = "0.3.0-alpha.7";
    authors = [ "Without Boats <boats@mozilla.com>" ];
    edition = "2018";
    sha256 = "0xz64w437kysk2jl8ggmshcvidhn7vd5fk9qdbxjls9r4mxji4kg";
    dependencies = mapFeatures features ([
      (crates."crossbeam"."${deps."juliex"."0.3.0-alpha.7"."crossbeam"}" deps)
      (crates."futures_preview"."${deps."juliex"."0.3.0-alpha.7"."futures_preview"}" deps)
      (crates."lazy_static"."${deps."juliex"."0.3.0-alpha.7"."lazy_static"}" deps)
      (crates."num_cpus"."${deps."juliex"."0.3.0-alpha.7"."num_cpus"}" deps)
    ]);
  };
  features_.juliex."0.3.0-alpha.7" = deps: f: updateFeatures f (rec {
    crossbeam."${deps.juliex."0.3.0-alpha.7".crossbeam}".default = true;
    futures_preview."${deps.juliex."0.3.0-alpha.7".futures_preview}".default = true;
    juliex."0.3.0-alpha.7".default = (f.juliex."0.3.0-alpha.7".default or true);
    lazy_static."${deps.juliex."0.3.0-alpha.7".lazy_static}".default = true;
    num_cpus."${deps.juliex."0.3.0-alpha.7".num_cpus}".default = true;
  }) [
    (features_.crossbeam."${deps."juliex"."0.3.0-alpha.7"."crossbeam"}" deps)
    (features_.futures_preview."${deps."juliex"."0.3.0-alpha.7"."futures_preview"}" deps)
    (features_.lazy_static."${deps."juliex"."0.3.0-alpha.7"."lazy_static"}" deps)
    (features_.num_cpus."${deps."juliex"."0.3.0-alpha.7"."num_cpus"}" deps)
  ];


# end
# kernel32-sys-0.2.2

  crates.kernel32_sys."0.2.2" = deps: { features?(features_.kernel32_sys."0.2.2" deps {}) }: buildRustCrate {
    crateName = "kernel32-sys";
    version = "0.2.2";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1lrw1hbinyvr6cp28g60z97w32w8vsk6pahk64pmrv2fmby8srfj";
    libName = "kernel32";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."winapi"."${deps."kernel32_sys"."0.2.2"."winapi"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."winapi_build"."${deps."kernel32_sys"."0.2.2"."winapi_build"}" deps)
    ]);
  };
  features_.kernel32_sys."0.2.2" = deps: f: updateFeatures f (rec {
    kernel32_sys."0.2.2".default = (f.kernel32_sys."0.2.2".default or true);
    winapi."${deps.kernel32_sys."0.2.2".winapi}".default = true;
    winapi_build."${deps.kernel32_sys."0.2.2".winapi_build}".default = true;
  }) [
    (features_.winapi."${deps."kernel32_sys"."0.2.2"."winapi"}" deps)
    (features_.winapi_build."${deps."kernel32_sys"."0.2.2"."winapi_build"}" deps)
  ];


# end
# lazy_static-1.3.0

  crates.lazy_static."1.3.0" = deps: { features?(features_.lazy_static."1.3.0" deps {}) }: buildRustCrate {
    crateName = "lazy_static";
    version = "1.3.0";
    authors = [ "Marvin Löbel <loebel.marvin@gmail.com>" ];
    sha256 = "1vv47va18ydk7dx5paz88g3jy1d3lwbx6qpxkbj8gyfv770i4b1y";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."lazy_static"."1.3.0" or {});
  };
  features_.lazy_static."1.3.0" = deps: f: updateFeatures f (rec {
    lazy_static = fold recursiveUpdate {} [
      { "1.3.0".default = (f.lazy_static."1.3.0".default or true); }
      { "1.3.0".spin =
        (f.lazy_static."1.3.0".spin or false) ||
        (f.lazy_static."1.3.0".spin_no_std or false) ||
        (lazy_static."1.3.0"."spin_no_std" or false); }
    ];
  }) [];


# end
# libc-0.2.60

  crates.libc."0.2.60" = deps: { features?(features_.libc."0.2.60" deps {}) }: buildRustCrate {
    crateName = "libc";
    version = "0.2.60";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1zklw10b6lwz6ldamxvdxr8gsxbqhphxhn8n5n5dndl7avafx49b";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."libc"."0.2.60" or {});
  };
  features_.libc."0.2.60" = deps: f: updateFeatures f (rec {
    libc = fold recursiveUpdate {} [
      { "0.2.60".align =
        (f.libc."0.2.60".align or false) ||
        (f.libc."0.2.60".rustc-dep-of-std or false) ||
        (libc."0.2.60"."rustc-dep-of-std" or false); }
      { "0.2.60".default = (f.libc."0.2.60".default or true); }
      { "0.2.60".rustc-std-workspace-core =
        (f.libc."0.2.60".rustc-std-workspace-core or false) ||
        (f.libc."0.2.60".rustc-dep-of-std or false) ||
        (libc."0.2.60"."rustc-dep-of-std" or false); }
      { "0.2.60".std =
        (f.libc."0.2.60".std or false) ||
        (f.libc."0.2.60".default or false) ||
        (libc."0.2.60"."default" or false) ||
        (f.libc."0.2.60".use_std or false) ||
        (libc."0.2.60"."use_std" or false); }
    ];
  }) [];


# end
# libdbus-sys-0.2.0

  crates.libdbus_sys."0.2.0" = deps: { features?(features_.libdbus_sys."0.2.0" deps {}) }: buildRustCrate {
    crateName = "libdbus-sys";
    version = "0.2.0";
    authors = [ "David Henningsson <diwic@ubuntu.com>" ];
    sha256 = "0h515njvr30m9z0avwaksi6vw0s5j6sz96cf3crgsidjdwla9wqz";
    build = "build.rs";

    buildDependencies = mapFeatures features ([
      (crates."pkg_config"."${deps."libdbus_sys"."0.2.0"."pkg_config"}" deps)
    ]);
  };
  features_.libdbus_sys."0.2.0" = deps: f: updateFeatures f (rec {
    libdbus_sys."0.2.0".default = (f.libdbus_sys."0.2.0".default or true);
    pkg_config."${deps.libdbus_sys."0.2.0".pkg_config}".default = true;
  }) [
    (features_.pkg_config."${deps."libdbus_sys"."0.2.0"."pkg_config"}" deps)
  ];


# end
# lock_api-0.1.5

  crates.lock_api."0.1.5" = deps: { features?(features_.lock_api."0.1.5" deps {}) }: buildRustCrate {
    crateName = "lock_api";
    version = "0.1.5";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "132sidr5hvjfkaqm3l95zpcpi8yk5ddd0g79zf1ad4v65sxirqqm";
    dependencies = mapFeatures features ([
      (crates."scopeguard"."${deps."lock_api"."0.1.5"."scopeguard"}" deps)
    ]
      ++ (if features.lock_api."0.1.5".owning_ref or false then [ (crates.owning_ref."${deps."lock_api"."0.1.5".owning_ref}" deps) ] else []));
    features = mkFeatures (features."lock_api"."0.1.5" or {});
  };
  features_.lock_api."0.1.5" = deps: f: updateFeatures f (rec {
    lock_api."0.1.5".default = (f.lock_api."0.1.5".default or true);
    owning_ref."${deps.lock_api."0.1.5".owning_ref}".default = true;
    scopeguard."${deps.lock_api."0.1.5".scopeguard}".default = (f.scopeguard."${deps.lock_api."0.1.5".scopeguard}".default or false);
  }) [
    (features_.owning_ref."${deps."lock_api"."0.1.5"."owning_ref"}" deps)
    (features_.scopeguard."${deps."lock_api"."0.1.5"."scopeguard"}" deps)
  ];


# end
# log-0.4.7

  crates.log."0.4.7" = deps: { features?(features_.log."0.4.7" deps {}) }: buildRustCrate {
    crateName = "log";
    version = "0.4.7";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0l5y0kd63l6mpw68r74asgk59rwqxmcjz8azjk9fax04r3gyzh05";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."log"."0.4.7"."cfg_if"}" deps)
    ]);
    features = mkFeatures (features."log"."0.4.7" or {});
  };
  features_.log."0.4.7" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.log."0.4.7".cfg_if}".default = true;
    log."0.4.7".default = (f.log."0.4.7".default or true);
  }) [
    (features_.cfg_if."${deps."log"."0.4.7"."cfg_if"}" deps)
  ];


# end
# mac-notification-sys-0.3.0

  crates.mac_notification_sys."0.3.0" = deps: { features?(features_.mac_notification_sys."0.3.0" deps {}) }: buildRustCrate {
    crateName = "mac-notification-sys";
    version = "0.3.0";
    authors = [ "Felix Döring <development@felixdoering.com>" "Hendrik Sollich <hendrik@hoodie.de>" ];
    sha256 = "0hlsb9mam6ima90hanmmyikrzb1pkhyr53ip72i5v23dfbszn99r";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."chrono"."${deps."mac_notification_sys"."0.3.0"."chrono"}" deps)
      (crates."dirs"."${deps."mac_notification_sys"."0.3.0"."dirs"}" deps)
      (crates."objc_foundation"."${deps."mac_notification_sys"."0.3.0"."objc_foundation"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."mac_notification_sys"."0.3.0"."cc"}" deps)
    ]);
  };
  features_.mac_notification_sys."0.3.0" = deps: f: updateFeatures f (rec {
    cc."${deps.mac_notification_sys."0.3.0".cc}".default = true;
    chrono."${deps.mac_notification_sys."0.3.0".chrono}".default = true;
    dirs."${deps.mac_notification_sys."0.3.0".dirs}".default = true;
    mac_notification_sys."0.3.0".default = (f.mac_notification_sys."0.3.0".default or true);
    objc_foundation."${deps.mac_notification_sys."0.3.0".objc_foundation}".default = true;
  }) [
    (features_.chrono."${deps."mac_notification_sys"."0.3.0"."chrono"}" deps)
    (features_.dirs."${deps."mac_notification_sys"."0.3.0"."dirs"}" deps)
    (features_.objc_foundation."${deps."mac_notification_sys"."0.3.0"."objc_foundation"}" deps)
    (features_.cc."${deps."mac_notification_sys"."0.3.0"."cc"}" deps)
  ];


# end
# macaddr-0.1.1

  crates.macaddr."0.1.1" = deps: { features?(features_.macaddr."0.1.1" deps {}) }: buildRustCrate {
    crateName = "macaddr";
    version = "0.1.1";
    authors = [ "svartalf <self@svartalf.info>" ];
    edition = "2018";
    sha256 = "07vvyn2fb3ivf1663xlmsrh7i43i3jfcxlc7hrml3chsapxv2mj9";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."macaddr"."0.1.1" or {});
  };
  features_.macaddr."0.1.1" = deps: f: updateFeatures f (rec {
    macaddr = fold recursiveUpdate {} [
      { "0.1.1".default = (f.macaddr."0.1.1".default or true); }
      { "0.1.1".std =
        (f.macaddr."0.1.1".std or false) ||
        (f.macaddr."0.1.1".default or false) ||
        (macaddr."0.1.1"."default" or false) ||
        (f.macaddr."0.1.1".serde_std or false) ||
        (macaddr."0.1.1"."serde_std" or false); }
    ];
  }) [];


# end
# mach-0.3.2

  crates.mach."0.3.2" = deps: { features?(features_.mach."0.3.2" deps {}) }: buildRustCrate {
    crateName = "mach";
    version = "0.3.2";
    authors = [ "Nick Fitzgerald <fitzgen@gmail.com>" "David Cuddeback <david.cuddeback@gmail.com>" "Gonzalo Brito Gadeschi <gonzalobg88@gmail.com>" ];
    edition = "2015";
    sha256 = "03rlcv1ixq40dcwsnk8n3zwjlqp3b5a2bqxn7mjlzbmd4g1vpjjb";
    dependencies = (if kernel == "darwin" || kernel == "ios" then mapFeatures features ([
      (crates."libc"."${deps."mach"."0.3.2"."libc"}" deps)
    ]) else []);
    features = mkFeatures (features."mach"."0.3.2" or {});
  };
  features_.mach."0.3.2" = deps: f: updateFeatures f (rec {
    libc."${deps.mach."0.3.2".libc}".default = (f.libc."${deps.mach."0.3.2".libc}".default or false);
    mach = fold recursiveUpdate {} [
      { "0.3.2".default = (f.mach."0.3.2".default or true); }
      { "0.3.2".rustc-std-workspace-core =
        (f.mach."0.3.2".rustc-std-workspace-core or false) ||
        (f.mach."0.3.2".rustc-dep-of-std or false) ||
        (mach."0.3.2"."rustc-dep-of-std" or false); }
    ];
  }) [
    (features_.libc."${deps."mach"."0.3.2"."libc"}" deps)
  ];


# end
# malloc_buf-0.0.6

  crates.malloc_buf."0.0.6" = deps: { features?(features_.malloc_buf."0.0.6" deps {}) }: buildRustCrate {
    crateName = "malloc_buf";
    version = "0.0.6";
    authors = [ "Steven Sheldon" ];
    sha256 = "0g3n9a74vnvz3ip8fp90ss2jwr27mzkb5q6r61fcv8n829rwhxfp";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."malloc_buf"."0.0.6"."libc"}" deps)
    ]);
  };
  features_.malloc_buf."0.0.6" = deps: f: updateFeatures f (rec {
    libc."${deps.malloc_buf."0.0.6".libc}".default = true;
    malloc_buf."0.0.6".default = (f.malloc_buf."0.0.6".default or true);
  }) [
    (features_.libc."${deps."malloc_buf"."0.0.6"."libc"}" deps)
  ];


# end
# memchr-2.2.1

  crates.memchr."2.2.1" = deps: { features?(features_.memchr."2.2.1" deps {}) }: buildRustCrate {
    crateName = "memchr";
    version = "2.2.1";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" "bluss" ];
    sha256 = "1mj5z8lhz6jbapslpq8a39pwcsl1p0jmgp7wgcj7nv4pcqhya7a0";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."memchr"."2.2.1" or {});
  };
  features_.memchr."2.2.1" = deps: f: updateFeatures f (rec {
    memchr = fold recursiveUpdate {} [
      { "2.2.1".default = (f.memchr."2.2.1".default or true); }
      { "2.2.1".use_std =
        (f.memchr."2.2.1".use_std or false) ||
        (f.memchr."2.2.1".default or false) ||
        (memchr."2.2.1"."default" or false); }
    ];
  }) [];


# end
# memoffset-0.5.1

  crates.memoffset."0.5.1" = deps: { features?(features_.memoffset."0.5.1" deps {}) }: buildRustCrate {
    crateName = "memoffset";
    version = "0.5.1";
    authors = [ "Gilad Naaman <gilad.naaman@gmail.com>" ];
    sha256 = "0fsk7kfk193f1aamafl45vvcp7j6p7c14ss7d583fijw3w5kj69k";

    buildDependencies = mapFeatures features ([
      (crates."rustc_version"."${deps."memoffset"."0.5.1"."rustc_version"}" deps)
    ]);
  };
  features_.memoffset."0.5.1" = deps: f: updateFeatures f (rec {
    memoffset."0.5.1".default = (f.memoffset."0.5.1".default or true);
    rustc_version."${deps.memoffset."0.5.1".rustc_version}".default = true;
  }) [
    (features_.rustc_version."${deps."memoffset"."0.5.1"."rustc_version"}" deps)
  ];


# end
# mio-0.6.19

  crates.mio."0.6.19" = deps: { features?(features_.mio."0.6.19" deps {}) }: buildRustCrate {
    crateName = "mio";
    version = "0.6.19";
    authors = [ "Carl Lerche <me@carllerche.com>" ];
    sha256 = "0pjazzvqwkb4fgmm4b3m8i05c2gq60lvqqia0faawswgqy7rvgac";
    dependencies = mapFeatures features ([
      (crates."iovec"."${deps."mio"."0.6.19"."iovec"}" deps)
      (crates."log"."${deps."mio"."0.6.19"."log"}" deps)
      (crates."net2"."${deps."mio"."0.6.19"."net2"}" deps)
      (crates."slab"."${deps."mio"."0.6.19"."slab"}" deps)
    ])
      ++ (if kernel == "fuchsia" then mapFeatures features ([
      (crates."fuchsia_zircon"."${deps."mio"."0.6.19"."fuchsia_zircon"}" deps)
      (crates."fuchsia_zircon_sys"."${deps."mio"."0.6.19"."fuchsia_zircon_sys"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."mio"."0.6.19"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."kernel32_sys"."${deps."mio"."0.6.19"."kernel32_sys"}" deps)
      (crates."miow"."${deps."mio"."0.6.19"."miow"}" deps)
      (crates."winapi"."${deps."mio"."0.6.19"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."mio"."0.6.19" or {});
  };
  features_.mio."0.6.19" = deps: f: updateFeatures f (rec {
    fuchsia_zircon."${deps.mio."0.6.19".fuchsia_zircon}".default = true;
    fuchsia_zircon_sys."${deps.mio."0.6.19".fuchsia_zircon_sys}".default = true;
    iovec."${deps.mio."0.6.19".iovec}".default = true;
    kernel32_sys."${deps.mio."0.6.19".kernel32_sys}".default = true;
    libc."${deps.mio."0.6.19".libc}".default = true;
    log."${deps.mio."0.6.19".log}".default = true;
    mio = fold recursiveUpdate {} [
      { "0.6.19".default = (f.mio."0.6.19".default or true); }
      { "0.6.19".with-deprecated =
        (f.mio."0.6.19".with-deprecated or false) ||
        (f.mio."0.6.19".default or false) ||
        (mio."0.6.19"."default" or false); }
    ];
    miow."${deps.mio."0.6.19".miow}".default = true;
    net2."${deps.mio."0.6.19".net2}".default = true;
    slab."${deps.mio."0.6.19".slab}".default = true;
    winapi."${deps.mio."0.6.19".winapi}".default = true;
  }) [
    (features_.iovec."${deps."mio"."0.6.19"."iovec"}" deps)
    (features_.log."${deps."mio"."0.6.19"."log"}" deps)
    (features_.net2."${deps."mio"."0.6.19"."net2"}" deps)
    (features_.slab."${deps."mio"."0.6.19"."slab"}" deps)
    (features_.fuchsia_zircon."${deps."mio"."0.6.19"."fuchsia_zircon"}" deps)
    (features_.fuchsia_zircon_sys."${deps."mio"."0.6.19"."fuchsia_zircon_sys"}" deps)
    (features_.libc."${deps."mio"."0.6.19"."libc"}" deps)
    (features_.kernel32_sys."${deps."mio"."0.6.19"."kernel32_sys"}" deps)
    (features_.miow."${deps."mio"."0.6.19"."miow"}" deps)
    (features_.winapi."${deps."mio"."0.6.19"."winapi"}" deps)
  ];


# end
# mio-uds-0.6.7

  crates.mio_uds."0.6.7" = deps: { features?(features_.mio_uds."0.6.7" deps {}) }: buildRustCrate {
    crateName = "mio-uds";
    version = "0.6.7";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1gff9908pvvysv7zgxvyxy7x34fnhs088cr0j8mgwj8j24mswrhm";
    dependencies = (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."iovec"."${deps."mio_uds"."0.6.7"."iovec"}" deps)
      (crates."libc"."${deps."mio_uds"."0.6.7"."libc"}" deps)
      (crates."mio"."${deps."mio_uds"."0.6.7"."mio"}" deps)
    ]) else []);
  };
  features_.mio_uds."0.6.7" = deps: f: updateFeatures f (rec {
    iovec."${deps.mio_uds."0.6.7".iovec}".default = true;
    libc."${deps.mio_uds."0.6.7".libc}".default = true;
    mio."${deps.mio_uds."0.6.7".mio}".default = true;
    mio_uds."0.6.7".default = (f.mio_uds."0.6.7".default or true);
  }) [
    (features_.iovec."${deps."mio_uds"."0.6.7"."iovec"}" deps)
    (features_.libc."${deps."mio_uds"."0.6.7"."libc"}" deps)
    (features_.mio."${deps."mio_uds"."0.6.7"."mio"}" deps)
  ];


# end
# miow-0.2.1

  crates.miow."0.2.1" = deps: { features?(features_.miow."0.2.1" deps {}) }: buildRustCrate {
    crateName = "miow";
    version = "0.2.1";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "14f8zkc6ix7mkyis1vsqnim8m29b6l55abkba3p2yz7j1ibcvrl0";
    dependencies = mapFeatures features ([
      (crates."kernel32_sys"."${deps."miow"."0.2.1"."kernel32_sys"}" deps)
      (crates."net2"."${deps."miow"."0.2.1"."net2"}" deps)
      (crates."winapi"."${deps."miow"."0.2.1"."winapi"}" deps)
      (crates."ws2_32_sys"."${deps."miow"."0.2.1"."ws2_32_sys"}" deps)
    ]);
  };
  features_.miow."0.2.1" = deps: f: updateFeatures f (rec {
    kernel32_sys."${deps.miow."0.2.1".kernel32_sys}".default = true;
    miow."0.2.1".default = (f.miow."0.2.1".default or true);
    net2."${deps.miow."0.2.1".net2}".default = (f.net2."${deps.miow."0.2.1".net2}".default or false);
    winapi."${deps.miow."0.2.1".winapi}".default = true;
    ws2_32_sys."${deps.miow."0.2.1".ws2_32_sys}".default = true;
  }) [
    (features_.kernel32_sys."${deps."miow"."0.2.1"."kernel32_sys"}" deps)
    (features_.net2."${deps."miow"."0.2.1"."net2"}" deps)
    (features_.winapi."${deps."miow"."0.2.1"."winapi"}" deps)
    (features_.ws2_32_sys."${deps."miow"."0.2.1"."ws2_32_sys"}" deps)
  ];


# end
# net2-0.2.33

  crates.net2."0.2.33" = deps: { features?(features_.net2."0.2.33" deps {}) }: buildRustCrate {
    crateName = "net2";
    version = "0.2.33";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1qnmajafgybj5wyxz9iffa8x5wgbwd2znfklmhqj7vl6lw1m65mq";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."net2"."0.2.33"."cfg_if"}" deps)
    ])
      ++ (if kernel == "redox" || (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."net2"."0.2.33"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."net2"."0.2.33"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."net2"."0.2.33" or {});
  };
  features_.net2."0.2.33" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.net2."0.2.33".cfg_if}".default = true;
    libc."${deps.net2."0.2.33".libc}".default = true;
    net2 = fold recursiveUpdate {} [
      { "0.2.33".default = (f.net2."0.2.33".default or true); }
      { "0.2.33".duration =
        (f.net2."0.2.33".duration or false) ||
        (f.net2."0.2.33".default or false) ||
        (net2."0.2.33"."default" or false); }
    ];
    winapi = fold recursiveUpdate {} [
      { "${deps.net2."0.2.33".winapi}"."handleapi" = true; }
      { "${deps.net2."0.2.33".winapi}"."winsock2" = true; }
      { "${deps.net2."0.2.33".winapi}"."ws2def" = true; }
      { "${deps.net2."0.2.33".winapi}"."ws2ipdef" = true; }
      { "${deps.net2."0.2.33".winapi}"."ws2tcpip" = true; }
      { "${deps.net2."0.2.33".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."net2"."0.2.33"."cfg_if"}" deps)
    (features_.libc."${deps."net2"."0.2.33"."libc"}" deps)
    (features_.winapi."${deps."net2"."0.2.33"."winapi"}" deps)
  ];


# end
# nix-0.14.1

  crates.nix."0.14.1" = deps: { features?(features_.nix."0.14.1" deps {}) }: buildRustCrate {
    crateName = "nix";
    version = "0.14.1";
    authors = [ "The nix-rust Project Developers" ];
    sha256 = "1hikdrihw975fcf3m2nmqjd7a00gxdzsbwjzlnjf6bgamr7ygipz";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."nix"."0.14.1"."bitflags"}" deps)
      (crates."cfg_if"."${deps."nix"."0.14.1"."cfg_if"}" deps)
      (crates."libc"."${deps."nix"."0.14.1"."libc"}" deps)
      (crates."void"."${deps."nix"."0.14.1"."void"}" deps)
    ])
      ++ (if kernel == "android" || kernel == "linux" then mapFeatures features ([
]) else [])
      ++ (if kernel == "dragonfly" then mapFeatures features ([
]) else [])
      ++ (if kernel == "freebsd" then mapFeatures features ([
]) else []);
  };
  features_.nix."0.14.1" = deps: f: updateFeatures f (rec {
    bitflags."${deps.nix."0.14.1".bitflags}".default = true;
    cfg_if."${deps.nix."0.14.1".cfg_if}".default = true;
    libc."${deps.nix."0.14.1".libc}".default = true;
    nix."0.14.1".default = (f.nix."0.14.1".default or true);
    void."${deps.nix."0.14.1".void}".default = true;
  }) [
    (features_.bitflags."${deps."nix"."0.14.1"."bitflags"}" deps)
    (features_.cfg_if."${deps."nix"."0.14.1"."cfg_if"}" deps)
    (features_.libc."${deps."nix"."0.14.1"."libc"}" deps)
    (features_.void."${deps."nix"."0.14.1"."void"}" deps)
  ];


# end
# nodrop-0.1.13

  crates.nodrop."0.1.13" = deps: { features?(features_.nodrop."0.1.13" deps {}) }: buildRustCrate {
    crateName = "nodrop";
    version = "0.1.13";
    authors = [ "bluss" ];
    sha256 = "0gkfx6wihr9z0m8nbdhma5pyvbipznjpkzny2d4zkc05b0vnhinb";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."nodrop"."0.1.13" or {});
  };
  features_.nodrop."0.1.13" = deps: f: updateFeatures f (rec {
    nodrop = fold recursiveUpdate {} [
      { "0.1.13".default = (f.nodrop."0.1.13".default or true); }
      { "0.1.13".nodrop-union =
        (f.nodrop."0.1.13".nodrop-union or false) ||
        (f.nodrop."0.1.13".use_union or false) ||
        (nodrop."0.1.13"."use_union" or false); }
      { "0.1.13".std =
        (f.nodrop."0.1.13".std or false) ||
        (f.nodrop."0.1.13".default or false) ||
        (nodrop."0.1.13"."default" or false); }
    ];
  }) [];


# end
# notify-rust-3.6.0

  crates.notify_rust."3.6.0" = deps: { features?(features_.notify_rust."3.6.0" deps {}) }: buildRustCrate {
    crateName = "notify-rust";
    version = "3.6.0";
    authors = [ "Hendrik Sollich <hendrik@hoodie.de>" ];
    sha256 = "1m5787y6m04rrwb4a6pvr1bh7mcmbbqm6jsn5d5pc231mbnngpb0";
    dependencies = (if (kernel == "linux" || kernel == "darwin") && !(kernel == "darwin") then mapFeatures features ([
      (crates."dbus"."${deps."notify_rust"."3.6.0"."dbus"}" deps)
    ]) else [])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."mac_notification_sys"."${deps."notify_rust"."3.6.0"."mac_notification_sys"}" deps)
    ]) else []);
    features = mkFeatures (features."notify_rust"."3.6.0" or {});
  };
  features_.notify_rust."3.6.0" = deps: f: updateFeatures f (rec {
    dbus."${deps.notify_rust."3.6.0".dbus}".default = true;
    mac_notification_sys."${deps.notify_rust."3.6.0".mac_notification_sys}".default = true;
    notify_rust = fold recursiveUpdate {} [
      { "3.6.0".default = (f.notify_rust."3.6.0".default or true); }
      { "3.6.0".image =
        (f.notify_rust."3.6.0".image or false) ||
        (f.notify_rust."3.6.0".images or false) ||
        (notify_rust."3.6.0"."images" or false); }
      { "3.6.0".lazy_static =
        (f.notify_rust."3.6.0".lazy_static or false) ||
        (f.notify_rust."3.6.0".images or false) ||
        (notify_rust."3.6.0"."images" or false); }
    ];
  }) [
    (features_.dbus."${deps."notify_rust"."3.6.0"."dbus"}" deps)
    (features_.mac_notification_sys."${deps."notify_rust"."3.6.0"."mac_notification_sys"}" deps)
  ];


# end
# num-integer-0.1.41

  crates.num_integer."0.1.41" = deps: { features?(features_.num_integer."0.1.41" deps {}) }: buildRustCrate {
    crateName = "num-integer";
    version = "0.1.41";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1y45nh9xlp2dra9svb1wfsy65fysm3k1w4m8jynywccq645yixid";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."num_traits"."${deps."num_integer"."0.1.41"."num_traits"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."num_integer"."0.1.41"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."num_integer"."0.1.41" or {});
  };
  features_.num_integer."0.1.41" = deps: f: updateFeatures f (rec {
    autocfg."${deps.num_integer."0.1.41".autocfg}".default = true;
    num_integer = fold recursiveUpdate {} [
      { "0.1.41".default = (f.num_integer."0.1.41".default or true); }
      { "0.1.41".std =
        (f.num_integer."0.1.41".std or false) ||
        (f.num_integer."0.1.41".default or false) ||
        (num_integer."0.1.41"."default" or false); }
    ];
    num_traits = fold recursiveUpdate {} [
      { "${deps.num_integer."0.1.41".num_traits}"."i128" =
        (f.num_traits."${deps.num_integer."0.1.41".num_traits}"."i128" or false) ||
        (num_integer."0.1.41"."i128" or false) ||
        (f."num_integer"."0.1.41"."i128" or false); }
      { "${deps.num_integer."0.1.41".num_traits}"."std" =
        (f.num_traits."${deps.num_integer."0.1.41".num_traits}"."std" or false) ||
        (num_integer."0.1.41"."std" or false) ||
        (f."num_integer"."0.1.41"."std" or false); }
      { "${deps.num_integer."0.1.41".num_traits}".default = (f.num_traits."${deps.num_integer."0.1.41".num_traits}".default or false); }
    ];
  }) [
    (features_.num_traits."${deps."num_integer"."0.1.41"."num_traits"}" deps)
    (features_.autocfg."${deps."num_integer"."0.1.41"."autocfg"}" deps)
  ];


# end
# num-traits-0.2.8

  crates.num_traits."0.2.8" = deps: { features?(features_.num_traits."0.2.8" deps {}) }: buildRustCrate {
    crateName = "num-traits";
    version = "0.2.8";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1mnlmy35n734n9xlq0qkfbgzz33x09a1s4rfj30p1976p09b862v";
    build = "build.rs";

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."num_traits"."0.2.8"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."num_traits"."0.2.8" or {});
  };
  features_.num_traits."0.2.8" = deps: f: updateFeatures f (rec {
    autocfg."${deps.num_traits."0.2.8".autocfg}".default = true;
    num_traits = fold recursiveUpdate {} [
      { "0.2.8".default = (f.num_traits."0.2.8".default or true); }
      { "0.2.8".std =
        (f.num_traits."0.2.8".std or false) ||
        (f.num_traits."0.2.8".default or false) ||
        (num_traits."0.2.8"."default" or false); }
    ];
  }) [
    (features_.autocfg."${deps."num_traits"."0.2.8"."autocfg"}" deps)
  ];


# end
# num_cpus-1.10.1

  crates.num_cpus."1.10.1" = deps: { features?(features_.num_cpus."1.10.1" deps {}) }: buildRustCrate {
    crateName = "num_cpus";
    version = "1.10.1";
    authors = [ "Sean McArthur <sean@seanmonstar.com>" ];
    sha256 = "1zi5s2cbnqqb0k0kdd6gqn2x97f9bssv44430h6w28awwzppyh8i";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."num_cpus"."1.10.1"."libc"}" deps)
    ]);
  };
  features_.num_cpus."1.10.1" = deps: f: updateFeatures f (rec {
    libc."${deps.num_cpus."1.10.1".libc}".default = true;
    num_cpus."1.10.1".default = (f.num_cpus."1.10.1".default or true);
  }) [
    (features_.libc."${deps."num_cpus"."1.10.1"."libc"}" deps)
  ];


# end
# objc-0.2.6

  crates.objc."0.2.6" = deps: { features?(features_.objc."0.2.6" deps {}) }: buildRustCrate {
    crateName = "objc";
    version = "0.2.6";
    authors = [ "Steven Sheldon" ];
    sha256 = "1l6q3dx9qr8slvmf4z9ivdh9q9yzp1v01d9am9mr9ybqhhkviav0";
    dependencies = mapFeatures features ([
      (crates."malloc_buf"."${deps."objc"."0.2.6"."malloc_buf"}" deps)
    ]);
    features = mkFeatures (features."objc"."0.2.6" or {});
  };
  features_.objc."0.2.6" = deps: f: updateFeatures f (rec {
    malloc_buf."${deps.objc."0.2.6".malloc_buf}".default = true;
    objc = fold recursiveUpdate {} [
      { "0.2.6".default = (f.objc."0.2.6".default or true); }
      { "0.2.6".objc_exception =
        (f.objc."0.2.6".objc_exception or false) ||
        (f.objc."0.2.6".exception or false) ||
        (objc."0.2.6"."exception" or false); }
    ];
  }) [
    (features_.malloc_buf."${deps."objc"."0.2.6"."malloc_buf"}" deps)
  ];


# end
# objc-foundation-0.1.1

  crates.objc_foundation."0.1.1" = deps: { features?(features_.objc_foundation."0.1.1" deps {}) }: buildRustCrate {
    crateName = "objc-foundation";
    version = "0.1.1";
    authors = [ "Steven Sheldon" ];
    sha256 = "0xab2xw363mmp4gchxa4sjbh9dlivvcqc03h85lx0nhmxyim1cgw";
    dependencies = mapFeatures features ([
      (crates."block"."${deps."objc_foundation"."0.1.1"."block"}" deps)
      (crates."objc"."${deps."objc_foundation"."0.1.1"."objc"}" deps)
      (crates."objc_id"."${deps."objc_foundation"."0.1.1"."objc_id"}" deps)
    ]);
  };
  features_.objc_foundation."0.1.1" = deps: f: updateFeatures f (rec {
    block."${deps.objc_foundation."0.1.1".block}".default = true;
    objc."${deps.objc_foundation."0.1.1".objc}".default = true;
    objc_foundation."0.1.1".default = (f.objc_foundation."0.1.1".default or true);
    objc_id."${deps.objc_foundation."0.1.1".objc_id}".default = true;
  }) [
    (features_.block."${deps."objc_foundation"."0.1.1"."block"}" deps)
    (features_.objc."${deps."objc_foundation"."0.1.1"."objc"}" deps)
    (features_.objc_id."${deps."objc_foundation"."0.1.1"."objc_id"}" deps)
  ];


# end
# objc_id-0.1.1

  crates.objc_id."0.1.1" = deps: { features?(features_.objc_id."0.1.1" deps {}) }: buildRustCrate {
    crateName = "objc_id";
    version = "0.1.1";
    authors = [ "Steven Sheldon" ];
    sha256 = "1zihv1gcipcs3jr6dz8d6yglm4xp7z8560l83hb5hgmyniqafmlh";
    dependencies = mapFeatures features ([
      (crates."objc"."${deps."objc_id"."0.1.1"."objc"}" deps)
    ]);
  };
  features_.objc_id."0.1.1" = deps: f: updateFeatures f (rec {
    objc."${deps.objc_id."0.1.1".objc}".default = true;
    objc_id."0.1.1".default = (f.objc_id."0.1.1".default or true);
  }) [
    (features_.objc."${deps."objc_id"."0.1.1"."objc"}" deps)
  ];


# end
# owning_ref-0.4.0

  crates.owning_ref."0.4.0" = deps: { features?(features_.owning_ref."0.4.0" deps {}) }: buildRustCrate {
    crateName = "owning_ref";
    version = "0.4.0";
    authors = [ "Marvin Löbel <loebel.marvin@gmail.com>" ];
    sha256 = "1m95qpc3hamkw9wlbfzqkzk7h6skyj40zr6sa3ps151slcfnnchm";
    dependencies = mapFeatures features ([
      (crates."stable_deref_trait"."${deps."owning_ref"."0.4.0"."stable_deref_trait"}" deps)
    ]);
  };
  features_.owning_ref."0.4.0" = deps: f: updateFeatures f (rec {
    owning_ref."0.4.0".default = (f.owning_ref."0.4.0".default or true);
    stable_deref_trait."${deps.owning_ref."0.4.0".stable_deref_trait}".default = true;
  }) [
    (features_.stable_deref_trait."${deps."owning_ref"."0.4.0"."stable_deref_trait"}" deps)
  ];


# end
# parking_lot-0.7.1

  crates.parking_lot."0.7.1" = deps: { features?(features_.parking_lot."0.7.1" deps {}) }: buildRustCrate {
    crateName = "parking_lot";
    version = "0.7.1";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "1qpb49xd176hqqabxdb48f1hvylfbf68rpz8yfrhw0x68ys0lkq1";
    dependencies = mapFeatures features ([
      (crates."lock_api"."${deps."parking_lot"."0.7.1"."lock_api"}" deps)
      (crates."parking_lot_core"."${deps."parking_lot"."0.7.1"."parking_lot_core"}" deps)
    ]);
    features = mkFeatures (features."parking_lot"."0.7.1" or {});
  };
  features_.parking_lot."0.7.1" = deps: f: updateFeatures f (rec {
    lock_api = fold recursiveUpdate {} [
      { "${deps.parking_lot."0.7.1".lock_api}"."nightly" =
        (f.lock_api."${deps.parking_lot."0.7.1".lock_api}"."nightly" or false) ||
        (parking_lot."0.7.1"."nightly" or false) ||
        (f."parking_lot"."0.7.1"."nightly" or false); }
      { "${deps.parking_lot."0.7.1".lock_api}"."owning_ref" =
        (f.lock_api."${deps.parking_lot."0.7.1".lock_api}"."owning_ref" or false) ||
        (parking_lot."0.7.1"."owning_ref" or false) ||
        (f."parking_lot"."0.7.1"."owning_ref" or false); }
      { "${deps.parking_lot."0.7.1".lock_api}".default = true; }
    ];
    parking_lot = fold recursiveUpdate {} [
      { "0.7.1".default = (f.parking_lot."0.7.1".default or true); }
      { "0.7.1".owning_ref =
        (f.parking_lot."0.7.1".owning_ref or false) ||
        (f.parking_lot."0.7.1".default or false) ||
        (parking_lot."0.7.1"."default" or false); }
    ];
    parking_lot_core = fold recursiveUpdate {} [
      { "${deps.parking_lot."0.7.1".parking_lot_core}"."deadlock_detection" =
        (f.parking_lot_core."${deps.parking_lot."0.7.1".parking_lot_core}"."deadlock_detection" or false) ||
        (parking_lot."0.7.1"."deadlock_detection" or false) ||
        (f."parking_lot"."0.7.1"."deadlock_detection" or false); }
      { "${deps.parking_lot."0.7.1".parking_lot_core}"."nightly" =
        (f.parking_lot_core."${deps.parking_lot."0.7.1".parking_lot_core}"."nightly" or false) ||
        (parking_lot."0.7.1"."nightly" or false) ||
        (f."parking_lot"."0.7.1"."nightly" or false); }
      { "${deps.parking_lot."0.7.1".parking_lot_core}".default = true; }
    ];
  }) [
    (features_.lock_api."${deps."parking_lot"."0.7.1"."lock_api"}" deps)
    (features_.parking_lot_core."${deps."parking_lot"."0.7.1"."parking_lot_core"}" deps)
  ];


# end
# parking_lot_core-0.4.0

  crates.parking_lot_core."0.4.0" = deps: { features?(features_.parking_lot_core."0.4.0" deps {}) }: buildRustCrate {
    crateName = "parking_lot_core";
    version = "0.4.0";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "1mzk5i240ddvhwnz65hhjk4cq61z235g1n8bd7al4mg6vx437c16";
    dependencies = mapFeatures features ([
      (crates."rand"."${deps."parking_lot_core"."0.4.0"."rand"}" deps)
      (crates."smallvec"."${deps."parking_lot_core"."0.4.0"."smallvec"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."parking_lot_core"."0.4.0"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."parking_lot_core"."0.4.0"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."rustc_version"."${deps."parking_lot_core"."0.4.0"."rustc_version"}" deps)
    ]);
    features = mkFeatures (features."parking_lot_core"."0.4.0" or {});
  };
  features_.parking_lot_core."0.4.0" = deps: f: updateFeatures f (rec {
    libc."${deps.parking_lot_core."0.4.0".libc}".default = true;
    parking_lot_core = fold recursiveUpdate {} [
      { "0.4.0".backtrace =
        (f.parking_lot_core."0.4.0".backtrace or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
      { "0.4.0".default = (f.parking_lot_core."0.4.0".default or true); }
      { "0.4.0".petgraph =
        (f.parking_lot_core."0.4.0".petgraph or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
      { "0.4.0".thread-id =
        (f.parking_lot_core."0.4.0".thread-id or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
    ];
    rand."${deps.parking_lot_core."0.4.0".rand}".default = true;
    rustc_version."${deps.parking_lot_core."0.4.0".rustc_version}".default = true;
    smallvec."${deps.parking_lot_core."0.4.0".smallvec}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.parking_lot_core."0.4.0".winapi}"."errhandlingapi" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."handleapi" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."minwindef" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."ntstatus" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winbase" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winerror" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winnt" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}".default = true; }
    ];
  }) [
    (features_.rand."${deps."parking_lot_core"."0.4.0"."rand"}" deps)
    (features_.smallvec."${deps."parking_lot_core"."0.4.0"."smallvec"}" deps)
    (features_.rustc_version."${deps."parking_lot_core"."0.4.0"."rustc_version"}" deps)
    (features_.libc."${deps."parking_lot_core"."0.4.0"."libc"}" deps)
    (features_.winapi."${deps."parking_lot_core"."0.4.0"."winapi"}" deps)
  ];


# end
# pin-utils-0.1.0-alpha.4

  crates.pin_utils."0.1.0-alpha.4" = deps: { features?(features_.pin_utils."0.1.0-alpha.4" deps {}) }: buildRustCrate {
    crateName = "pin-utils";
    version = "0.1.0-alpha.4";
    authors = [ "Josef Brandl <mail@josefbrandl.de>" ];
    edition = "2018";
    sha256 = "1fl7h1f6gr7qj903k3ir2vw993gbj4dd775s0idq4pzsbjqjj3x1";
  };
  features_.pin_utils."0.1.0-alpha.4" = deps: f: updateFeatures f (rec {
    pin_utils."0.1.0-alpha.4".default = (f.pin_utils."0.1.0-alpha.4".default or true);
  }) [];


# end
# pkg-config-0.3.14

  crates.pkg_config."0.3.14" = deps: { features?(features_.pkg_config."0.3.14" deps {}) }: buildRustCrate {
    crateName = "pkg-config";
    version = "0.3.14";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0207fsarrm412j0dh87lfcas72n8mxar7q3mgflsbsrqnb140sv6";
  };
  features_.pkg_config."0.3.14" = deps: f: updateFeatures f (rec {
    pkg_config."0.3.14".default = (f.pkg_config."0.3.14".default or true);
  }) [];


# end
# platforms-0.2.0

  crates.platforms."0.2.0" = deps: { features?(features_.platforms."0.2.0" deps {}) }: buildRustCrate {
    crateName = "platforms";
    version = "0.2.0";
    authors = [ "Tony Arcieri <bascule@gmail.com>" ];
    edition = "2018";
    sha256 = "1rrpzn6yl70032kvls99q2lgc97zc9hwx0xlaxpn5vi6qqqsbjjn";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."platforms"."0.2.0" or {});
  };
  features_.platforms."0.2.0" = deps: f: updateFeatures f (rec {
    platforms = fold recursiveUpdate {} [
      { "0.2.0".default = (f.platforms."0.2.0".default or true); }
      { "0.2.0".std =
        (f.platforms."0.2.0".std or false) ||
        (f.platforms."0.2.0".default or false) ||
        (platforms."0.2.0"."default" or false); }
    ];
  }) [];


# end
# proc-macro2-0.4.30

  crates.proc_macro2."0.4.30" = deps: { features?(features_.proc_macro2."0.4.30" deps {}) }: buildRustCrate {
    crateName = "proc-macro2";
    version = "0.4.30";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0iifv51wrm6r4r2gghw6rray3nv53zcap355bbz1nsmbhj5s09b9";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."unicode_xid"."${deps."proc_macro2"."0.4.30"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."proc_macro2"."0.4.30" or {});
  };
  features_.proc_macro2."0.4.30" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "0.4.30".default = (f.proc_macro2."0.4.30".default or true); }
      { "0.4.30".proc-macro =
        (f.proc_macro2."0.4.30".proc-macro or false) ||
        (f.proc_macro2."0.4.30".default or false) ||
        (proc_macro2."0.4.30"."default" or false); }
    ];
    unicode_xid."${deps.proc_macro2."0.4.30".unicode_xid}".default = true;
  }) [
    (features_.unicode_xid."${deps."proc_macro2"."0.4.30"."unicode_xid"}" deps)
  ];


# end
# quote-0.6.13

  crates.quote."0.6.13" = deps: { features?(features_.quote."0.6.13" deps {}) }: buildRustCrate {
    crateName = "quote";
    version = "0.6.13";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1hrvsin40i4q8swrhlj9057g7nsp0lg02h8zbzmgz14av9mzv8g8";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."quote"."0.6.13"."proc_macro2"}" deps)
    ]);
    features = mkFeatures (features."quote"."0.6.13" or {});
  };
  features_.quote."0.6.13" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.quote."0.6.13".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.quote."0.6.13".proc_macro2}"."proc-macro" or false) ||
        (quote."0.6.13"."proc-macro" or false) ||
        (f."quote"."0.6.13"."proc-macro" or false); }
      { "${deps.quote."0.6.13".proc_macro2}".default = (f.proc_macro2."${deps.quote."0.6.13".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "0.6.13".default = (f.quote."0.6.13".default or true); }
      { "0.6.13".proc-macro =
        (f.quote."0.6.13".proc-macro or false) ||
        (f.quote."0.6.13".default or false) ||
        (quote."0.6.13"."default" or false); }
    ];
  }) [
    (features_.proc_macro2."${deps."quote"."0.6.13"."proc_macro2"}" deps)
  ];


# end
# rand-0.6.5

  crates.rand."0.6.5" = deps: { features?(features_.rand."0.6.5" deps {}) }: buildRustCrate {
    crateName = "rand";
    version = "0.6.5";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0zbck48159aj8zrwzf80sd9xxh96w4f4968nshwjpysjvflimvgb";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_chacha"."${deps."rand"."0.6.5"."rand_chacha"}" deps)
      (crates."rand_core"."${deps."rand"."0.6.5"."rand_core"}" deps)
      (crates."rand_hc"."${deps."rand"."0.6.5"."rand_hc"}" deps)
      (crates."rand_isaac"."${deps."rand"."0.6.5"."rand_isaac"}" deps)
      (crates."rand_jitter"."${deps."rand"."0.6.5"."rand_jitter"}" deps)
      (crates."rand_pcg"."${deps."rand"."0.6.5"."rand_pcg"}" deps)
      (crates."rand_xorshift"."${deps."rand"."0.6.5"."rand_xorshift"}" deps)
    ]
      ++ (if features.rand."0.6.5".rand_os or false then [ (crates.rand_os."${deps."rand"."0.6.5".rand_os}" deps) ] else []))
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."rand"."0.6.5"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand"."0.6.5"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand"."0.6.5"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."rand"."0.6.5" or {});
  };
  features_.rand."0.6.5" = deps: f: updateFeatures f (rec {
    autocfg."${deps.rand."0.6.5".autocfg}".default = true;
    libc."${deps.rand."0.6.5".libc}".default = (f.libc."${deps.rand."0.6.5".libc}".default or false);
    rand = fold recursiveUpdate {} [
      { "0.6.5".alloc =
        (f.rand."0.6.5".alloc or false) ||
        (f.rand."0.6.5".std or false) ||
        (rand."0.6.5"."std" or false); }
      { "0.6.5".default = (f.rand."0.6.5".default or true); }
      { "0.6.5".packed_simd =
        (f.rand."0.6.5".packed_simd or false) ||
        (f.rand."0.6.5".simd_support or false) ||
        (rand."0.6.5"."simd_support" or false); }
      { "0.6.5".rand_os =
        (f.rand."0.6.5".rand_os or false) ||
        (f.rand."0.6.5".std or false) ||
        (rand."0.6.5"."std" or false); }
      { "0.6.5".simd_support =
        (f.rand."0.6.5".simd_support or false) ||
        (f.rand."0.6.5".nightly or false) ||
        (rand."0.6.5"."nightly" or false); }
      { "0.6.5".std =
        (f.rand."0.6.5".std or false) ||
        (f.rand."0.6.5".default or false) ||
        (rand."0.6.5"."default" or false); }
    ];
    rand_chacha."${deps.rand."0.6.5".rand_chacha}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_core}"."alloc" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."alloc" or false) ||
        (rand."0.6.5"."alloc" or false) ||
        (f."rand"."0.6.5"."alloc" or false); }
      { "${deps.rand."0.6.5".rand_core}"."serde1" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_core}"."std" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."std" or false) ||
        (rand."0.6.5"."std" or false) ||
        (f."rand"."0.6.5"."std" or false); }
      { "${deps.rand."0.6.5".rand_core}".default = true; }
    ];
    rand_hc."${deps.rand."0.6.5".rand_hc}".default = true;
    rand_isaac = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_isaac}"."serde1" =
        (f.rand_isaac."${deps.rand."0.6.5".rand_isaac}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_isaac}".default = true; }
    ];
    rand_jitter = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_jitter}"."std" =
        (f.rand_jitter."${deps.rand."0.6.5".rand_jitter}"."std" or false) ||
        (rand."0.6.5"."std" or false) ||
        (f."rand"."0.6.5"."std" or false); }
      { "${deps.rand."0.6.5".rand_jitter}".default = true; }
    ];
    rand_os = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_os}"."stdweb" =
        (f.rand_os."${deps.rand."0.6.5".rand_os}"."stdweb" or false) ||
        (rand."0.6.5"."stdweb" or false) ||
        (f."rand"."0.6.5"."stdweb" or false); }
      { "${deps.rand."0.6.5".rand_os}"."wasm-bindgen" =
        (f.rand_os."${deps.rand."0.6.5".rand_os}"."wasm-bindgen" or false) ||
        (rand."0.6.5"."wasm-bindgen" or false) ||
        (f."rand"."0.6.5"."wasm-bindgen" or false); }
      { "${deps.rand."0.6.5".rand_os}".default = true; }
    ];
    rand_pcg."${deps.rand."0.6.5".rand_pcg}".default = true;
    rand_xorshift = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_xorshift}"."serde1" =
        (f.rand_xorshift."${deps.rand."0.6.5".rand_xorshift}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_xorshift}".default = true; }
    ];
    winapi = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".winapi}"."minwindef" = true; }
      { "${deps.rand."0.6.5".winapi}"."ntsecapi" = true; }
      { "${deps.rand."0.6.5".winapi}"."profileapi" = true; }
      { "${deps.rand."0.6.5".winapi}"."winnt" = true; }
      { "${deps.rand."0.6.5".winapi}".default = true; }
    ];
  }) [
    (features_.rand_chacha."${deps."rand"."0.6.5"."rand_chacha"}" deps)
    (features_.rand_core."${deps."rand"."0.6.5"."rand_core"}" deps)
    (features_.rand_hc."${deps."rand"."0.6.5"."rand_hc"}" deps)
    (features_.rand_isaac."${deps."rand"."0.6.5"."rand_isaac"}" deps)
    (features_.rand_jitter."${deps."rand"."0.6.5"."rand_jitter"}" deps)
    (features_.rand_os."${deps."rand"."0.6.5"."rand_os"}" deps)
    (features_.rand_pcg."${deps."rand"."0.6.5"."rand_pcg"}" deps)
    (features_.rand_xorshift."${deps."rand"."0.6.5"."rand_xorshift"}" deps)
    (features_.autocfg."${deps."rand"."0.6.5"."autocfg"}" deps)
    (features_.libc."${deps."rand"."0.6.5"."libc"}" deps)
    (features_.winapi."${deps."rand"."0.6.5"."winapi"}" deps)
  ];


# end
# rand_chacha-0.1.1

  crates.rand_chacha."0.1.1" = deps: { features?(features_.rand_chacha."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_chacha";
    version = "0.1.1";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0xnxm4mjd7wjnh18zxc1yickw58axbycp35ciraplqdfwn1gffwi";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_chacha"."0.1.1"."rand_core"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand_chacha"."0.1.1"."autocfg"}" deps)
    ]);
  };
  features_.rand_chacha."0.1.1" = deps: f: updateFeatures f (rec {
    autocfg."${deps.rand_chacha."0.1.1".autocfg}".default = true;
    rand_chacha."0.1.1".default = (f.rand_chacha."0.1.1".default or true);
    rand_core."${deps.rand_chacha."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_chacha."0.1.1".rand_core}".default or false);
  }) [
    (features_.rand_core."${deps."rand_chacha"."0.1.1"."rand_core"}" deps)
    (features_.autocfg."${deps."rand_chacha"."0.1.1"."autocfg"}" deps)
  ];


# end
# rand_core-0.3.1

  crates.rand_core."0.3.1" = deps: { features?(features_.rand_core."0.3.1" deps {}) }: buildRustCrate {
    crateName = "rand_core";
    version = "0.3.1";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0q0ssgpj9x5a6fda83nhmfydy7a6c0wvxm0jhncsmjx8qp8gw91m";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_core"."0.3.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_core"."0.3.1" or {});
  };
  features_.rand_core."0.3.1" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_core."0.3.1".rand_core}"."alloc" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."alloc" or false) ||
        (rand_core."0.3.1"."alloc" or false) ||
        (f."rand_core"."0.3.1"."alloc" or false); }
      { "${deps.rand_core."0.3.1".rand_core}"."serde1" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."serde1" or false) ||
        (rand_core."0.3.1"."serde1" or false) ||
        (f."rand_core"."0.3.1"."serde1" or false); }
      { "${deps.rand_core."0.3.1".rand_core}"."std" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."std" or false) ||
        (rand_core."0.3.1"."std" or false) ||
        (f."rand_core"."0.3.1"."std" or false); }
      { "${deps.rand_core."0.3.1".rand_core}".default = true; }
      { "0.3.1".default = (f.rand_core."0.3.1".default or true); }
      { "0.3.1".std =
        (f.rand_core."0.3.1".std or false) ||
        (f.rand_core."0.3.1".default or false) ||
        (rand_core."0.3.1"."default" or false); }
    ];
  }) [
    (features_.rand_core."${deps."rand_core"."0.3.1"."rand_core"}" deps)
  ];


# end
# rand_core-0.4.0

  crates.rand_core."0.4.0" = deps: { features?(features_.rand_core."0.4.0" deps {}) }: buildRustCrate {
    crateName = "rand_core";
    version = "0.4.0";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0wb5iwhffibj0pnpznhv1g3i7h1fnhz64s3nz74fz6vsm3q6q3br";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."rand_core"."0.4.0" or {});
  };
  features_.rand_core."0.4.0" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "0.4.0".alloc =
        (f.rand_core."0.4.0".alloc or false) ||
        (f.rand_core."0.4.0".std or false) ||
        (rand_core."0.4.0"."std" or false); }
      { "0.4.0".default = (f.rand_core."0.4.0".default or true); }
      { "0.4.0".serde =
        (f.rand_core."0.4.0".serde or false) ||
        (f.rand_core."0.4.0".serde1 or false) ||
        (rand_core."0.4.0"."serde1" or false); }
      { "0.4.0".serde_derive =
        (f.rand_core."0.4.0".serde_derive or false) ||
        (f.rand_core."0.4.0".serde1 or false) ||
        (rand_core."0.4.0"."serde1" or false); }
    ];
  }) [];


# end
# rand_hc-0.1.0

  crates.rand_hc."0.1.0" = deps: { features?(features_.rand_hc."0.1.0" deps {}) }: buildRustCrate {
    crateName = "rand_hc";
    version = "0.1.0";
    authors = [ "The Rand Project Developers" ];
    sha256 = "05agb75j87yp7y1zk8yf7bpm66hc0673r3dlypn0kazynr6fdgkz";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_hc"."0.1.0"."rand_core"}" deps)
    ]);
  };
  features_.rand_hc."0.1.0" = deps: f: updateFeatures f (rec {
    rand_core."${deps.rand_hc."0.1.0".rand_core}".default = (f.rand_core."${deps.rand_hc."0.1.0".rand_core}".default or false);
    rand_hc."0.1.0".default = (f.rand_hc."0.1.0".default or true);
  }) [
    (features_.rand_core."${deps."rand_hc"."0.1.0"."rand_core"}" deps)
  ];


# end
# rand_isaac-0.1.1

  crates.rand_isaac."0.1.1" = deps: { features?(features_.rand_isaac."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_isaac";
    version = "0.1.1";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "10hhdh5b5sa03s6b63y9bafm956jwilx41s71jbrzl63ccx8lxdq";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_isaac"."0.1.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_isaac"."0.1.1" or {});
  };
  features_.rand_isaac."0.1.1" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_isaac."0.1.1".rand_core}"."serde1" =
        (f.rand_core."${deps.rand_isaac."0.1.1".rand_core}"."serde1" or false) ||
        (rand_isaac."0.1.1"."serde1" or false) ||
        (f."rand_isaac"."0.1.1"."serde1" or false); }
      { "${deps.rand_isaac."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_isaac."0.1.1".rand_core}".default or false); }
    ];
    rand_isaac = fold recursiveUpdate {} [
      { "0.1.1".default = (f.rand_isaac."0.1.1".default or true); }
      { "0.1.1".serde =
        (f.rand_isaac."0.1.1".serde or false) ||
        (f.rand_isaac."0.1.1".serde1 or false) ||
        (rand_isaac."0.1.1"."serde1" or false); }
      { "0.1.1".serde_derive =
        (f.rand_isaac."0.1.1".serde_derive or false) ||
        (f.rand_isaac."0.1.1".serde1 or false) ||
        (rand_isaac."0.1.1"."serde1" or false); }
    ];
  }) [
    (features_.rand_core."${deps."rand_isaac"."0.1.1"."rand_core"}" deps)
  ];


# end
# rand_jitter-0.1.4

  crates.rand_jitter."0.1.4" = deps: { features?(features_.rand_jitter."0.1.4" deps {}) }: buildRustCrate {
    crateName = "rand_jitter";
    version = "0.1.4";
    authors = [ "The Rand Project Developers" ];
    sha256 = "13nr4h042ab9l7qcv47bxrxw3gkf2pc3cni6c9pyi4nxla0mm7b6";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_jitter"."0.1.4"."rand_core"}" deps)
    ])
      ++ (if kernel == "darwin" || kernel == "ios" then mapFeatures features ([
      (crates."libc"."${deps."rand_jitter"."0.1.4"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand_jitter"."0.1.4"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."rand_jitter"."0.1.4" or {});
  };
  features_.rand_jitter."0.1.4" = deps: f: updateFeatures f (rec {
    libc."${deps.rand_jitter."0.1.4".libc}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_jitter."0.1.4".rand_core}"."std" =
        (f.rand_core."${deps.rand_jitter."0.1.4".rand_core}"."std" or false) ||
        (rand_jitter."0.1.4"."std" or false) ||
        (f."rand_jitter"."0.1.4"."std" or false); }
      { "${deps.rand_jitter."0.1.4".rand_core}".default = true; }
    ];
    rand_jitter."0.1.4".default = (f.rand_jitter."0.1.4".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.rand_jitter."0.1.4".winapi}"."profileapi" = true; }
      { "${deps.rand_jitter."0.1.4".winapi}".default = true; }
    ];
  }) [
    (features_.rand_core."${deps."rand_jitter"."0.1.4"."rand_core"}" deps)
    (features_.libc."${deps."rand_jitter"."0.1.4"."libc"}" deps)
    (features_.winapi."${deps."rand_jitter"."0.1.4"."winapi"}" deps)
  ];


# end
# rand_os-0.1.3

  crates.rand_os."0.1.3" = deps: { features?(features_.rand_os."0.1.3" deps {}) }: buildRustCrate {
    crateName = "rand_os";
    version = "0.1.3";
    authors = [ "The Rand Project Developers" ];
    sha256 = "0ywwspizgs9g8vzn6m5ix9yg36n15119d6n792h7mk4r5vs0ww4j";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_os"."0.1.3"."rand_core"}" deps)
    ])
      ++ (if abi == "sgx" then mapFeatures features ([
      (crates."rdrand"."${deps."rand_os"."0.1.3"."rdrand"}" deps)
    ]) else [])
      ++ (if kernel == "cloudabi" then mapFeatures features ([
      (crates."cloudabi"."${deps."rand_os"."0.1.3"."cloudabi"}" deps)
    ]) else [])
      ++ (if kernel == "fuchsia" then mapFeatures features ([
      (crates."fuchsia_cprng"."${deps."rand_os"."0.1.3"."fuchsia_cprng"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."rand_os"."0.1.3"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand_os"."0.1.3"."winapi"}" deps)
    ]) else [])
      ++ (if kernel == "wasm32-unknown-unknown" then mapFeatures features ([
]) else []);
  };
  features_.rand_os."0.1.3" = deps: f: updateFeatures f (rec {
    cloudabi."${deps.rand_os."0.1.3".cloudabi}".default = true;
    fuchsia_cprng."${deps.rand_os."0.1.3".fuchsia_cprng}".default = true;
    libc."${deps.rand_os."0.1.3".libc}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_os."0.1.3".rand_core}"."std" = true; }
      { "${deps.rand_os."0.1.3".rand_core}".default = true; }
    ];
    rand_os."0.1.3".default = (f.rand_os."0.1.3".default or true);
    rdrand."${deps.rand_os."0.1.3".rdrand}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.rand_os."0.1.3".winapi}"."minwindef" = true; }
      { "${deps.rand_os."0.1.3".winapi}"."ntsecapi" = true; }
      { "${deps.rand_os."0.1.3".winapi}"."winnt" = true; }
      { "${deps.rand_os."0.1.3".winapi}".default = true; }
    ];
  }) [
    (features_.rand_core."${deps."rand_os"."0.1.3"."rand_core"}" deps)
    (features_.rdrand."${deps."rand_os"."0.1.3"."rdrand"}" deps)
    (features_.cloudabi."${deps."rand_os"."0.1.3"."cloudabi"}" deps)
    (features_.fuchsia_cprng."${deps."rand_os"."0.1.3"."fuchsia_cprng"}" deps)
    (features_.libc."${deps."rand_os"."0.1.3"."libc"}" deps)
    (features_.winapi."${deps."rand_os"."0.1.3"."winapi"}" deps)
  ];


# end
# rand_pcg-0.1.2

  crates.rand_pcg."0.1.2" = deps: { features?(features_.rand_pcg."0.1.2" deps {}) }: buildRustCrate {
    crateName = "rand_pcg";
    version = "0.1.2";
    authors = [ "The Rand Project Developers" ];
    sha256 = "04qgi2ai2z42li5h4aawvxbpnlqyjfnipz9d6k73mdnl6p1xq938";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_pcg"."0.1.2"."rand_core"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand_pcg"."0.1.2"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."rand_pcg"."0.1.2" or {});
  };
  features_.rand_pcg."0.1.2" = deps: f: updateFeatures f (rec {
    autocfg."${deps.rand_pcg."0.1.2".autocfg}".default = true;
    rand_core."${deps.rand_pcg."0.1.2".rand_core}".default = true;
    rand_pcg = fold recursiveUpdate {} [
      { "0.1.2".default = (f.rand_pcg."0.1.2".default or true); }
      { "0.1.2".serde =
        (f.rand_pcg."0.1.2".serde or false) ||
        (f.rand_pcg."0.1.2".serde1 or false) ||
        (rand_pcg."0.1.2"."serde1" or false); }
      { "0.1.2".serde_derive =
        (f.rand_pcg."0.1.2".serde_derive or false) ||
        (f.rand_pcg."0.1.2".serde1 or false) ||
        (rand_pcg."0.1.2"."serde1" or false); }
    ];
  }) [
    (features_.rand_core."${deps."rand_pcg"."0.1.2"."rand_core"}" deps)
    (features_.autocfg."${deps."rand_pcg"."0.1.2"."autocfg"}" deps)
  ];


# end
# rand_xorshift-0.1.1

  crates.rand_xorshift."0.1.1" = deps: { features?(features_.rand_xorshift."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_xorshift";
    version = "0.1.1";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0v365c4h4lzxwz5k5kp9m0661s0sss7ylv74if0xb4svis9sswnn";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_xorshift"."0.1.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_xorshift"."0.1.1" or {});
  };
  features_.rand_xorshift."0.1.1" = deps: f: updateFeatures f (rec {
    rand_core."${deps.rand_xorshift."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_xorshift."0.1.1".rand_core}".default or false);
    rand_xorshift = fold recursiveUpdate {} [
      { "0.1.1".default = (f.rand_xorshift."0.1.1".default or true); }
      { "0.1.1".serde =
        (f.rand_xorshift."0.1.1".serde or false) ||
        (f.rand_xorshift."0.1.1".serde1 or false) ||
        (rand_xorshift."0.1.1"."serde1" or false); }
      { "0.1.1".serde_derive =
        (f.rand_xorshift."0.1.1".serde_derive or false) ||
        (f.rand_xorshift."0.1.1".serde1 or false) ||
        (rand_xorshift."0.1.1"."serde1" or false); }
    ];
  }) [
    (features_.rand_core."${deps."rand_xorshift"."0.1.1"."rand_core"}" deps)
  ];


# end
# raw-cpuid-6.1.0

  crates.raw_cpuid."6.1.0" = deps: { features?(features_.raw_cpuid."6.1.0" deps {}) }: buildRustCrate {
    crateName = "raw-cpuid";
    version = "6.1.0";
    authors = [ "Gerd Zellweger <mail@gerdzellweger.com>" ];
    sha256 = "1479qsp70vfhjvzr2s1vdwksn7i6njgy02hlwrn2cs1h1fpgz70f";
    crateBin =
      [{  name = "cpuid";  path = "src/bin/cpuid.rs"; }];
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."raw_cpuid"."6.1.0"."bitflags"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
]) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."raw_cpuid"."6.1.0"."cc"}" deps)
      (crates."rustc_version"."${deps."raw_cpuid"."6.1.0"."rustc_version"}" deps)
    ]);
    features = mkFeatures (features."raw_cpuid"."6.1.0" or {});
  };
  features_.raw_cpuid."6.1.0" = deps: f: updateFeatures f (rec {
    bitflags."${deps.raw_cpuid."6.1.0".bitflags}".default = true;
    cc."${deps.raw_cpuid."6.1.0".cc}".default = true;
    raw_cpuid = fold recursiveUpdate {} [
      { "6.1.0".default = (f.raw_cpuid."6.1.0".default or true); }
      { "6.1.0".serde =
        (f.raw_cpuid."6.1.0".serde or false) ||
        (f.raw_cpuid."6.1.0".serialize or false) ||
        (raw_cpuid."6.1.0"."serialize" or false); }
      { "6.1.0".serde_derive =
        (f.raw_cpuid."6.1.0".serde_derive or false) ||
        (f.raw_cpuid."6.1.0".serialize or false) ||
        (raw_cpuid."6.1.0"."serialize" or false); }
    ];
    rustc_version."${deps.raw_cpuid."6.1.0".rustc_version}".default = true;
  }) [
    (features_.bitflags."${deps."raw_cpuid"."6.1.0"."bitflags"}" deps)
    (features_.cc."${deps."raw_cpuid"."6.1.0"."cc"}" deps)
    (features_.rustc_version."${deps."raw_cpuid"."6.1.0"."rustc_version"}" deps)
  ];


# end
# rdrand-0.4.0

  crates.rdrand."0.4.0" = deps: { features?(features_.rdrand."0.4.0" deps {}) }: buildRustCrate {
    crateName = "rdrand";
    version = "0.4.0";
    authors = [ "Simonas Kazlauskas <rdrand@kazlauskas.me>" ];
    sha256 = "15hrcasn0v876wpkwab1dwbk9kvqwrb3iv4y4dibb6yxnfvzwajk";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rdrand"."0.4.0"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rdrand"."0.4.0" or {});
  };
  features_.rdrand."0.4.0" = deps: f: updateFeatures f (rec {
    rand_core."${deps.rdrand."0.4.0".rand_core}".default = (f.rand_core."${deps.rdrand."0.4.0".rand_core}".default or false);
    rdrand = fold recursiveUpdate {} [
      { "0.4.0".default = (f.rdrand."0.4.0".default or true); }
      { "0.4.0".std =
        (f.rdrand."0.4.0".std or false) ||
        (f.rdrand."0.4.0".default or false) ||
        (rdrand."0.4.0"."default" or false); }
    ];
  }) [
    (features_.rand_core."${deps."rdrand"."0.4.0"."rand_core"}" deps)
  ];


# end
# redox_syscall-0.1.56

  crates.redox_syscall."0.1.56" = deps: { features?(features_.redox_syscall."0.1.56" deps {}) }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.56";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "0jcp8nd947zcy938bz09pzlmi3vyxfdzg92pjxdvvk0699vwcc26";
    libName = "syscall";
  };
  features_.redox_syscall."0.1.56" = deps: f: updateFeatures f (rec {
    redox_syscall."0.1.56".default = (f.redox_syscall."0.1.56".default or true);
  }) [];


# end
# redox_users-0.3.0

  crates.redox_users."0.3.0" = deps: { features?(features_.redox_users."0.3.0" deps {}) }: buildRustCrate {
    crateName = "redox_users";
    version = "0.3.0";
    authors = [ "Jose Narvaez <goyox86@gmail.com>" "Wesley Hershberger <mggmugginsmc@gmail.com>" ];
    sha256 = "051rzqgk5hn7rf24nwgbb32zfdn8qp2kwqvdp0772ia85p737p4j";
    dependencies = mapFeatures features ([
      (crates."argon2rs"."${deps."redox_users"."0.3.0"."argon2rs"}" deps)
      (crates."failure"."${deps."redox_users"."0.3.0"."failure"}" deps)
      (crates."rand_os"."${deps."redox_users"."0.3.0"."rand_os"}" deps)
      (crates."redox_syscall"."${deps."redox_users"."0.3.0"."redox_syscall"}" deps)
    ]);
  };
  features_.redox_users."0.3.0" = deps: f: updateFeatures f (rec {
    argon2rs."${deps.redox_users."0.3.0".argon2rs}".default = (f.argon2rs."${deps.redox_users."0.3.0".argon2rs}".default or false);
    failure."${deps.redox_users."0.3.0".failure}".default = true;
    rand_os."${deps.redox_users."0.3.0".rand_os}".default = true;
    redox_syscall."${deps.redox_users."0.3.0".redox_syscall}".default = true;
    redox_users."0.3.0".default = (f.redox_users."0.3.0".default or true);
  }) [
    (features_.argon2rs."${deps."redox_users"."0.3.0"."argon2rs"}" deps)
    (features_.failure."${deps."redox_users"."0.3.0"."failure"}" deps)
    (features_.rand_os."${deps."redox_users"."0.3.0"."rand_os"}" deps)
    (features_.redox_syscall."${deps."redox_users"."0.3.0"."redox_syscall"}" deps)
  ];


# end
# regex-1.2.0

  crates.regex."1.2.0" = deps: { features?(features_.regex."1.2.0" deps {}) }: buildRustCrate {
    crateName = "regex";
    version = "1.2.0";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0wwxd69p7rs4hm3jmb7awwasbkwzsphdgn83l9cml16m3k3zf1qj";
    dependencies = mapFeatures features ([
      (crates."aho_corasick"."${deps."regex"."1.2.0"."aho_corasick"}" deps)
      (crates."memchr"."${deps."regex"."1.2.0"."memchr"}" deps)
      (crates."regex_syntax"."${deps."regex"."1.2.0"."regex_syntax"}" deps)
      (crates."thread_local"."${deps."regex"."1.2.0"."thread_local"}" deps)
      (crates."utf8_ranges"."${deps."regex"."1.2.0"."utf8_ranges"}" deps)
    ]);
    features = mkFeatures (features."regex"."1.2.0" or {});
  };
  features_.regex."1.2.0" = deps: f: updateFeatures f (rec {
    aho_corasick."${deps.regex."1.2.0".aho_corasick}".default = true;
    memchr."${deps.regex."1.2.0".memchr}".default = true;
    regex = fold recursiveUpdate {} [
      { "1.2.0".default = (f.regex."1.2.0".default or true); }
      { "1.2.0".pattern =
        (f.regex."1.2.0".pattern or false) ||
        (f.regex."1.2.0".unstable or false) ||
        (regex."1.2.0"."unstable" or false); }
      { "1.2.0".use_std =
        (f.regex."1.2.0".use_std or false) ||
        (f.regex."1.2.0".default or false) ||
        (regex."1.2.0"."default" or false); }
    ];
    regex_syntax."${deps.regex."1.2.0".regex_syntax}".default = true;
    thread_local."${deps.regex."1.2.0".thread_local}".default = true;
    utf8_ranges."${deps.regex."1.2.0".utf8_ranges}".default = true;
  }) [
    (features_.aho_corasick."${deps."regex"."1.2.0"."aho_corasick"}" deps)
    (features_.memchr."${deps."regex"."1.2.0"."memchr"}" deps)
    (features_.regex_syntax."${deps."regex"."1.2.0"."regex_syntax"}" deps)
    (features_.thread_local."${deps."regex"."1.2.0"."thread_local"}" deps)
    (features_.utf8_ranges."${deps."regex"."1.2.0"."utf8_ranges"}" deps)
  ];


# end
# regex-syntax-0.6.10

  crates.regex_syntax."0.6.10" = deps: { features?(features_.regex_syntax."0.6.10" deps {}) }: buildRustCrate {
    crateName = "regex-syntax";
    version = "0.6.10";
    authors = [ "The Rust Project Developers" ];
    sha256 = "09k42z3lbm5c96mvbrc9jwasynahzr7w41zrs0r2hh5fw9dzjd9v";
    dependencies = mapFeatures features ([
      (crates."ucd_util"."${deps."regex_syntax"."0.6.10"."ucd_util"}" deps)
    ]);
  };
  features_.regex_syntax."0.6.10" = deps: f: updateFeatures f (rec {
    regex_syntax."0.6.10".default = (f.regex_syntax."0.6.10".default or true);
    ucd_util."${deps.regex_syntax."0.6.10".ucd_util}".default = true;
  }) [
    (features_.ucd_util."${deps."regex_syntax"."0.6.10"."ucd_util"}" deps)
  ];


# end
# romio-0.3.0-alpha.9

  crates.romio."0.3.0-alpha.9" = deps: { features?(features_.romio."0.3.0-alpha.9" deps {}) }: buildRustCrate {
    crateName = "romio";
    version = "0.3.0-alpha.9";
    authors = [ "The Rust Networking Working Group" "Carl Lerche <me@carllerche.com>" ];
    edition = "2018";
    sha256 = "05vwxiqy91736zrhlbd1gxxm8fd9ipz1fl7z84ifwdw86bdirym6";
    dependencies = mapFeatures features ([
      (crates."async_datagram"."${deps."romio"."0.3.0-alpha.9"."async_datagram"}" deps)
      (crates."async_ready"."${deps."romio"."0.3.0-alpha.9"."async_ready"}" deps)
      (crates."crossbeam_utils"."${deps."romio"."0.3.0-alpha.9"."crossbeam_utils"}" deps)
      (crates."futures_preview"."${deps."romio"."0.3.0-alpha.9"."futures_preview"}" deps)
      (crates."lazy_static"."${deps."romio"."0.3.0-alpha.9"."lazy_static"}" deps)
      (crates."libc"."${deps."romio"."0.3.0-alpha.9"."libc"}" deps)
      (crates."log"."${deps."romio"."0.3.0-alpha.9"."log"}" deps)
      (crates."mio"."${deps."romio"."0.3.0-alpha.9"."mio"}" deps)
      (crates."mio_uds"."${deps."romio"."0.3.0-alpha.9"."mio_uds"}" deps)
      (crates."num_cpus"."${deps."romio"."0.3.0-alpha.9"."num_cpus"}" deps)
      (crates."parking_lot"."${deps."romio"."0.3.0-alpha.9"."parking_lot"}" deps)
      (crates."slab"."${deps."romio"."0.3.0-alpha.9"."slab"}" deps)
    ]);
  };
  features_.romio."0.3.0-alpha.9" = deps: f: updateFeatures f (rec {
    async_datagram."${deps.romio."0.3.0-alpha.9".async_datagram}".default = true;
    async_ready."${deps.romio."0.3.0-alpha.9".async_ready}".default = true;
    crossbeam_utils."${deps.romio."0.3.0-alpha.9".crossbeam_utils}".default = true;
    futures_preview."${deps.romio."0.3.0-alpha.9".futures_preview}".default = true;
    lazy_static."${deps.romio."0.3.0-alpha.9".lazy_static}".default = true;
    libc."${deps.romio."0.3.0-alpha.9".libc}".default = true;
    log."${deps.romio."0.3.0-alpha.9".log}".default = true;
    mio."${deps.romio."0.3.0-alpha.9".mio}".default = true;
    mio_uds."${deps.romio."0.3.0-alpha.9".mio_uds}".default = true;
    num_cpus."${deps.romio."0.3.0-alpha.9".num_cpus}".default = true;
    parking_lot."${deps.romio."0.3.0-alpha.9".parking_lot}".default = true;
    romio."0.3.0-alpha.9".default = (f.romio."0.3.0-alpha.9".default or true);
    slab."${deps.romio."0.3.0-alpha.9".slab}".default = true;
  }) [
    (features_.async_datagram."${deps."romio"."0.3.0-alpha.9"."async_datagram"}" deps)
    (features_.async_ready."${deps."romio"."0.3.0-alpha.9"."async_ready"}" deps)
    (features_.crossbeam_utils."${deps."romio"."0.3.0-alpha.9"."crossbeam_utils"}" deps)
    (features_.futures_preview."${deps."romio"."0.3.0-alpha.9"."futures_preview"}" deps)
    (features_.lazy_static."${deps."romio"."0.3.0-alpha.9"."lazy_static"}" deps)
    (features_.libc."${deps."romio"."0.3.0-alpha.9"."libc"}" deps)
    (features_.log."${deps."romio"."0.3.0-alpha.9"."log"}" deps)
    (features_.mio."${deps."romio"."0.3.0-alpha.9"."mio"}" deps)
    (features_.mio_uds."${deps."romio"."0.3.0-alpha.9"."mio_uds"}" deps)
    (features_.num_cpus."${deps."romio"."0.3.0-alpha.9"."num_cpus"}" deps)
    (features_.parking_lot."${deps."romio"."0.3.0-alpha.9"."parking_lot"}" deps)
    (features_.slab."${deps."romio"."0.3.0-alpha.9"."slab"}" deps)
  ];


# end
# runtime-0.3.0-alpha.6

  crates.runtime."0.3.0-alpha.6" = deps: { features?(features_.runtime."0.3.0-alpha.6" deps {}) }: buildRustCrate {
    crateName = "runtime";
    version = "0.3.0-alpha.6";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "17rfnfz4dyjipm8xx3bpkdc715f677a57fsmrg9dsndn7b3dgqvn";
    dependencies = mapFeatures features ([
      (crates."futures_preview"."${deps."runtime"."0.3.0-alpha.6"."futures_preview"}" deps)
      (crates."runtime_attributes"."${deps."runtime"."0.3.0-alpha.6"."runtime_attributes"}" deps)
      (crates."runtime_raw"."${deps."runtime"."0.3.0-alpha.6"."runtime_raw"}" deps)
    ]
      ++ (if features.runtime."0.3.0-alpha.6".runtime-native or false then [ (crates.runtime_native."${deps."runtime"."0.3.0-alpha.6".runtime_native}" deps) ] else []));
    features = mkFeatures (features."runtime"."0.3.0-alpha.6" or {});
  };
  features_.runtime."0.3.0-alpha.6" = deps: f: updateFeatures f (rec {
    futures_preview."${deps.runtime."0.3.0-alpha.6".futures_preview}".default = true;
    runtime = fold recursiveUpdate {} [
      { "0.3.0-alpha.6".default = (f.runtime."0.3.0-alpha.6".default or true); }
      { "0.3.0-alpha.6".native =
        (f.runtime."0.3.0-alpha.6".native or false) ||
        (f.runtime."0.3.0-alpha.6".default or false) ||
        (runtime."0.3.0-alpha.6"."default" or false); }
      { "0.3.0-alpha.6".runtime-native =
        (f.runtime."0.3.0-alpha.6".runtime-native or false) ||
        (f.runtime."0.3.0-alpha.6".native or false) ||
        (runtime."0.3.0-alpha.6"."native" or false); }
    ];
    runtime_attributes."${deps.runtime."0.3.0-alpha.6".runtime_attributes}".default = true;
    runtime_native."${deps.runtime."0.3.0-alpha.6".runtime_native}".default = true;
    runtime_raw."${deps.runtime."0.3.0-alpha.6".runtime_raw}".default = true;
  }) [
    (features_.futures_preview."${deps."runtime"."0.3.0-alpha.6"."futures_preview"}" deps)
    (features_.runtime_attributes."${deps."runtime"."0.3.0-alpha.6"."runtime_attributes"}" deps)
    (features_.runtime_native."${deps."runtime"."0.3.0-alpha.6"."runtime_native"}" deps)
    (features_.runtime_raw."${deps."runtime"."0.3.0-alpha.6"."runtime_raw"}" deps)
  ];


# end
# runtime-attributes-0.3.0-alpha.5

  crates.runtime_attributes."0.3.0-alpha.5" = deps: { features?(features_.runtime_attributes."0.3.0-alpha.5" deps {}) }: buildRustCrate {
    crateName = "runtime-attributes";
    version = "0.3.0-alpha.5";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "01glh4pa8dnx3sjf5ha8yka9cjbvgs8qhizdlmdlxl5skbjnaqsc";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."runtime_attributes"."0.3.0-alpha.5"."proc_macro2"}" deps)
      (crates."quote"."${deps."runtime_attributes"."0.3.0-alpha.5"."quote"}" deps)
      (crates."syn"."${deps."runtime_attributes"."0.3.0-alpha.5"."syn"}" deps)
    ]);
  };
  features_.runtime_attributes."0.3.0-alpha.5" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.runtime_attributes."0.3.0-alpha.5".proc_macro2}"."nightly" = true; }
      { "${deps.runtime_attributes."0.3.0-alpha.5".proc_macro2}".default = true; }
    ];
    quote."${deps.runtime_attributes."0.3.0-alpha.5".quote}".default = true;
    runtime_attributes."0.3.0-alpha.5".default = (f.runtime_attributes."0.3.0-alpha.5".default or true);
    syn = fold recursiveUpdate {} [
      { "${deps.runtime_attributes."0.3.0-alpha.5".syn}"."full" = true; }
      { "${deps.runtime_attributes."0.3.0-alpha.5".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."runtime_attributes"."0.3.0-alpha.5"."proc_macro2"}" deps)
    (features_.quote."${deps."runtime_attributes"."0.3.0-alpha.5"."quote"}" deps)
    (features_.syn."${deps."runtime_attributes"."0.3.0-alpha.5"."syn"}" deps)
  ];


# end
# runtime-native-0.3.0-alpha.5

  crates.runtime_native."0.3.0-alpha.5" = deps: { features?(features_.runtime_native."0.3.0-alpha.5" deps {}) }: buildRustCrate {
    crateName = "runtime-native";
    version = "0.3.0-alpha.5";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "0fx1yplhysjbgj4ba15a1287mja8flipm7ccvmvyh439x744lm3y";
    dependencies = mapFeatures features ([
      (crates."futures_preview"."${deps."runtime_native"."0.3.0-alpha.5"."futures_preview"}" deps)
      (crates."runtime_raw"."${deps."runtime_native"."0.3.0-alpha.5"."runtime_raw"}" deps)
    ])
      ++ (if !(cpu == "wasm32") then mapFeatures features ([
      (crates."async_datagram"."${deps."runtime_native"."0.3.0-alpha.5"."async_datagram"}" deps)
      (crates."futures_timer"."${deps."runtime_native"."0.3.0-alpha.5"."futures_timer"}" deps)
      (crates."juliex"."${deps."runtime_native"."0.3.0-alpha.5"."juliex"}" deps)
      (crates."lazy_static"."${deps."runtime_native"."0.3.0-alpha.5"."lazy_static"}" deps)
      (crates."romio"."${deps."runtime_native"."0.3.0-alpha.5"."romio"}" deps)
    ]) else [])
      ++ (if cpu == "wasm32" then mapFeatures features ([
      (crates."wasm_bindgen"."${deps."runtime_native"."0.3.0-alpha.5"."wasm_bindgen"}" deps)
      (crates."wasm_bindgen_futures"."${deps."runtime_native"."0.3.0-alpha.5"."wasm_bindgen_futures"}" deps)
    ]) else []);
  };
  features_.runtime_native."0.3.0-alpha.5" = deps: f: updateFeatures f (rec {
    async_datagram."${deps.runtime_native."0.3.0-alpha.5".async_datagram}".default = true;
    futures_preview = fold recursiveUpdate {} [
      { "${deps.runtime_native."0.3.0-alpha.5".futures_preview}"."compat" = true; }
      { "${deps.runtime_native."0.3.0-alpha.5".futures_preview}".default = true; }
    ];
    futures_timer."${deps.runtime_native."0.3.0-alpha.5".futures_timer}".default = true;
    juliex."${deps.runtime_native."0.3.0-alpha.5".juliex}".default = true;
    lazy_static."${deps.runtime_native."0.3.0-alpha.5".lazy_static}".default = true;
    romio."${deps.runtime_native."0.3.0-alpha.5".romio}".default = true;
    runtime_native."0.3.0-alpha.5".default = (f.runtime_native."0.3.0-alpha.5".default or true);
    runtime_raw."${deps.runtime_native."0.3.0-alpha.5".runtime_raw}".default = true;
    wasm_bindgen."${deps.runtime_native."0.3.0-alpha.5".wasm_bindgen}".default = true;
    wasm_bindgen_futures."${deps.runtime_native."0.3.0-alpha.5".wasm_bindgen_futures}".default = true;
  }) [
    (features_.futures_preview."${deps."runtime_native"."0.3.0-alpha.5"."futures_preview"}" deps)
    (features_.runtime_raw."${deps."runtime_native"."0.3.0-alpha.5"."runtime_raw"}" deps)
    (features_.async_datagram."${deps."runtime_native"."0.3.0-alpha.5"."async_datagram"}" deps)
    (features_.futures_timer."${deps."runtime_native"."0.3.0-alpha.5"."futures_timer"}" deps)
    (features_.juliex."${deps."runtime_native"."0.3.0-alpha.5"."juliex"}" deps)
    (features_.lazy_static."${deps."runtime_native"."0.3.0-alpha.5"."lazy_static"}" deps)
    (features_.romio."${deps."runtime_native"."0.3.0-alpha.5"."romio"}" deps)
    (features_.wasm_bindgen."${deps."runtime_native"."0.3.0-alpha.5"."wasm_bindgen"}" deps)
    (features_.wasm_bindgen_futures."${deps."runtime_native"."0.3.0-alpha.5"."wasm_bindgen_futures"}" deps)
  ];


# end
# runtime-raw-0.3.0-alpha.4

  crates.runtime_raw."0.3.0-alpha.4" = deps: { features?(features_.runtime_raw."0.3.0-alpha.4" deps {}) }: buildRustCrate {
    crateName = "runtime-raw";
    version = "0.3.0-alpha.4";
    authors = [ "The Rust Async Ecosystem Working Group" ];
    edition = "2018";
    sha256 = "17iihf32hkwszzkkk6iz2mhjz1w41mynkgh0n1ik5kqf2cihaz1n";
    dependencies = mapFeatures features ([
      (crates."futures_preview"."${deps."runtime_raw"."0.3.0-alpha.4"."futures_preview"}" deps)
    ]);
  };
  features_.runtime_raw."0.3.0-alpha.4" = deps: f: updateFeatures f (rec {
    futures_preview."${deps.runtime_raw."0.3.0-alpha.4".futures_preview}".default = true;
    runtime_raw."0.3.0-alpha.4".default = (f.runtime_raw."0.3.0-alpha.4".default or true);
  }) [
    (features_.futures_preview."${deps."runtime_raw"."0.3.0-alpha.4"."futures_preview"}" deps)
  ];


# end
# rustc-demangle-0.1.15

  crates.rustc_demangle."0.1.15" = deps: { features?(features_.rustc_demangle."0.1.15" deps {}) }: buildRustCrate {
    crateName = "rustc-demangle";
    version = "0.1.15";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "04rgsfzhz4k9s56vkczsdbvmvg9409xp0nw4cy99lb2i0aa0255s";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."rustc_demangle"."0.1.15" or {});
  };
  features_.rustc_demangle."0.1.15" = deps: f: updateFeatures f (rec {
    rustc_demangle = fold recursiveUpdate {} [
      { "0.1.15".compiler_builtins =
        (f.rustc_demangle."0.1.15".compiler_builtins or false) ||
        (f.rustc_demangle."0.1.15".rustc-dep-of-std or false) ||
        (rustc_demangle."0.1.15"."rustc-dep-of-std" or false); }
      { "0.1.15".core =
        (f.rustc_demangle."0.1.15".core or false) ||
        (f.rustc_demangle."0.1.15".rustc-dep-of-std or false) ||
        (rustc_demangle."0.1.15"."rustc-dep-of-std" or false); }
      { "0.1.15".default = (f.rustc_demangle."0.1.15".default or true); }
    ];
  }) [];


# end
# rustc_version-0.2.3

  crates.rustc_version."0.2.3" = deps: { features?(features_.rustc_version."0.2.3" deps {}) }: buildRustCrate {
    crateName = "rustc_version";
    version = "0.2.3";
    authors = [ "Marvin Löbel <loebel.marvin@gmail.com>" ];
    sha256 = "0rgwzbgs3i9fqjm1p4ra3n7frafmpwl29c8lw85kv1rxn7n2zaa7";
    dependencies = mapFeatures features ([
      (crates."semver"."${deps."rustc_version"."0.2.3"."semver"}" deps)
    ]);
  };
  features_.rustc_version."0.2.3" = deps: f: updateFeatures f (rec {
    rustc_version."0.2.3".default = (f.rustc_version."0.2.3".default or true);
    semver."${deps.rustc_version."0.2.3".semver}".default = true;
  }) [
    (features_.semver."${deps."rustc_version"."0.2.3"."semver"}" deps)
  ];


# end
# scoped_threadpool-0.1.9

  crates.scoped_threadpool."0.1.9" = deps: { features?(features_.scoped_threadpool."0.1.9" deps {}) }: buildRustCrate {
    crateName = "scoped_threadpool";
    version = "0.1.9";
    authors = [ "Marvin Löbel <loebel.marvin@gmail.com>" ];
    sha256 = "1arqj2skcfr46s1lcyvnlmfr5456kg5nhn8k90xyfjnxkp5yga2v";
    features = mkFeatures (features."scoped_threadpool"."0.1.9" or {});
  };
  features_.scoped_threadpool."0.1.9" = deps: f: updateFeatures f (rec {
    scoped_threadpool."0.1.9".default = (f.scoped_threadpool."0.1.9".default or true);
  }) [];


# end
# scopeguard-0.3.3

  crates.scopeguard."0.3.3" = deps: { features?(features_.scopeguard."0.3.3" deps {}) }: buildRustCrate {
    crateName = "scopeguard";
    version = "0.3.3";
    authors = [ "bluss" ];
    sha256 = "0i1l013csrqzfz6c68pr5pi01hg5v5yahq8fsdmaxy6p8ygsjf3r";
    features = mkFeatures (features."scopeguard"."0.3.3" or {});
  };
  features_.scopeguard."0.3.3" = deps: f: updateFeatures f (rec {
    scopeguard = fold recursiveUpdate {} [
      { "0.3.3".default = (f.scopeguard."0.3.3".default or true); }
      { "0.3.3".use_std =
        (f.scopeguard."0.3.3".use_std or false) ||
        (f.scopeguard."0.3.3".default or false) ||
        (scopeguard."0.3.3"."default" or false); }
    ];
  }) [];


# end
# scopeguard-1.0.0

  crates.scopeguard."1.0.0" = deps: { features?(features_.scopeguard."1.0.0" deps {}) }: buildRustCrate {
    crateName = "scopeguard";
    version = "1.0.0";
    authors = [ "bluss" ];
    sha256 = "15vrix0jx3i4naqnjswddzn4m036krrv71a8vkh3b1zq4hxmrb0q";
    features = mkFeatures (features."scopeguard"."1.0.0" or {});
  };
  features_.scopeguard."1.0.0" = deps: f: updateFeatures f (rec {
    scopeguard = fold recursiveUpdate {} [
      { "1.0.0".default = (f.scopeguard."1.0.0".default or true); }
      { "1.0.0".use_std =
        (f.scopeguard."1.0.0".use_std or false) ||
        (f.scopeguard."1.0.0".default or false) ||
        (scopeguard."1.0.0"."default" or false); }
    ];
  }) [];


# end
# semver-0.9.0

  crates.semver."0.9.0" = deps: { features?(features_.semver."0.9.0" deps {}) }: buildRustCrate {
    crateName = "semver";
    version = "0.9.0";
    authors = [ "Steve Klabnik <steve@steveklabnik.com>" "The Rust Project Developers" ];
    sha256 = "0azak2lb2wc36s3x15az886kck7rpnksrw14lalm157rg9sc9z63";
    dependencies = mapFeatures features ([
      (crates."semver_parser"."${deps."semver"."0.9.0"."semver_parser"}" deps)
    ]);
    features = mkFeatures (features."semver"."0.9.0" or {});
  };
  features_.semver."0.9.0" = deps: f: updateFeatures f (rec {
    semver = fold recursiveUpdate {} [
      { "0.9.0".default = (f.semver."0.9.0".default or true); }
      { "0.9.0".serde =
        (f.semver."0.9.0".serde or false) ||
        (f.semver."0.9.0".ci or false) ||
        (semver."0.9.0"."ci" or false); }
    ];
    semver_parser."${deps.semver."0.9.0".semver_parser}".default = true;
  }) [
    (features_.semver_parser."${deps."semver"."0.9.0"."semver_parser"}" deps)
  ];


# end
# semver-parser-0.7.0

  crates.semver_parser."0.7.0" = deps: { features?(features_.semver_parser."0.7.0" deps {}) }: buildRustCrate {
    crateName = "semver-parser";
    version = "0.7.0";
    authors = [ "Steve Klabnik <steve@steveklabnik.com>" ];
    sha256 = "1da66c8413yakx0y15k8c055yna5lyb6fr0fw9318kdwkrk5k12h";
  };
  features_.semver_parser."0.7.0" = deps: f: updateFeatures f (rec {
    semver_parser."0.7.0".default = (f.semver_parser."0.7.0".default or true);
  }) [];


# end
# slab-0.4.2

  crates.slab."0.4.2" = deps: { features?(features_.slab."0.4.2" deps {}) }: buildRustCrate {
    crateName = "slab";
    version = "0.4.2";
    authors = [ "Carl Lerche <me@carllerche.com>" ];
    sha256 = "0h1l2z7qy6207kv0v3iigdf2xfk9yrhbwj1svlxk6wxjmdxvgdl7";
  };
  features_.slab."0.4.2" = deps: f: updateFeatures f (rec {
    slab."0.4.2".default = (f.slab."0.4.2".default or true);
  }) [];


# end
# smallvec-0.6.10

  crates.smallvec."0.6.10" = deps: { features?(features_.smallvec."0.6.10" deps {}) }: buildRustCrate {
    crateName = "smallvec";
    version = "0.6.10";
    authors = [ "Simon Sapin <simon.sapin@exyr.org>" ];
    sha256 = "01w7xd79q0bwn683gk4ryw50ad1zzxkny10f7gkbaaj1ax6f4q4h";
    libPath = "lib.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."smallvec"."0.6.10" or {});
  };
  features_.smallvec."0.6.10" = deps: f: updateFeatures f (rec {
    smallvec = fold recursiveUpdate {} [
      { "0.6.10".default = (f.smallvec."0.6.10".default or true); }
      { "0.6.10".std =
        (f.smallvec."0.6.10".std or false) ||
        (f.smallvec."0.6.10".default or false) ||
        (smallvec."0.6.10"."default" or false); }
    ];
  }) [];


# end
# snafu-0.4.3

  crates.snafu."0.4.3" = deps: { features?(features_.snafu."0.4.3" deps {}) }: buildRustCrate {
    crateName = "snafu";
    version = "0.4.3";
    authors = [ "Jake Goulding <jake.goulding@gmail.com>" ];
    sha256 = "1kh4prkjyc11sq0b5zlgpx8zc2w2scpiki8sw7i5fhqnrw1haaqq";
    dependencies = mapFeatures features ([
      (crates."snafu_derive"."${deps."snafu"."0.4.3"."snafu_derive"}" deps)
    ]
      ++ (if features.snafu."0.4.3".backtrace or false then [ (crates.backtrace."${deps."snafu"."0.4.3".backtrace}" deps) ] else [])
      ++ (if features.snafu."0.4.3".doc-comment or false then [ (crates.doc_comment."${deps."snafu"."0.4.3".doc_comment}" deps) ] else []));
    features = mkFeatures (features."snafu"."0.4.3" or {});
  };
  features_.snafu."0.4.3" = deps: f: updateFeatures f (rec {
    backtrace."${deps.snafu."0.4.3".backtrace}".default = true;
    doc_comment."${deps.snafu."0.4.3".doc_comment}".default = (f.doc_comment."${deps.snafu."0.4.3".doc_comment}".default or false);
    snafu = fold recursiveUpdate {} [
      { "0.4.3".backtrace =
        (f.snafu."0.4.3".backtrace or false) ||
        (f.snafu."0.4.3".backtraces or false) ||
        (snafu."0.4.3"."backtraces" or false); }
      { "0.4.3".backtraces =
        (f.snafu."0.4.3".backtraces or false) ||
        (f.snafu."0.4.3".backtrace-crate or false) ||
        (snafu."0.4.3"."backtrace-crate" or false) ||
        (f.snafu."0.4.3".default or false) ||
        (snafu."0.4.3"."default" or false); }
      { "0.4.3".default = (f.snafu."0.4.3".default or true); }
      { "0.4.3".doc-comment =
        (f.snafu."0.4.3".doc-comment or false) ||
        (f.snafu."0.4.3".rust_1_30 or false) ||
        (snafu."0.4.3"."rust_1_30" or false); }
      { "0.4.3".futures-core-preview =
        (f.snafu."0.4.3".futures-core-preview or false) ||
        (f.snafu."0.4.3".unstable-futures or false) ||
        (snafu."0.4.3"."unstable-futures" or false); }
      { "0.4.3".futures-preview =
        (f.snafu."0.4.3".futures-preview or false) ||
        (f.snafu."0.4.3".internal-dev-dependencies or false) ||
        (snafu."0.4.3"."internal-dev-dependencies" or false); }
      { "0.4.3".futures01 =
        (f.snafu."0.4.3".futures01 or false) ||
        (f.snafu."0.4.3".futures-01 or false) ||
        (snafu."0.4.3"."futures-01" or false); }
      { "0.4.3".pin-project =
        (f.snafu."0.4.3".pin-project or false) ||
        (f.snafu."0.4.3".unstable-futures or false) ||
        (snafu."0.4.3"."unstable-futures" or false); }
      { "0.4.3".rust_1_30 =
        (f.snafu."0.4.3".rust_1_30 or false) ||
        (f.snafu."0.4.3".default or false) ||
        (snafu."0.4.3"."default" or false); }
    ];
    snafu_derive = fold recursiveUpdate {} [
      { "${deps.snafu."0.4.3".snafu_derive}"."backtraces" =
        (f.snafu_derive."${deps.snafu."0.4.3".snafu_derive}"."backtraces" or false) ||
        (snafu."0.4.3"."backtraces" or false) ||
        (f."snafu"."0.4.3"."backtraces" or false); }
      { "${deps.snafu."0.4.3".snafu_derive}"."rust_1_30" =
        (f.snafu_derive."${deps.snafu."0.4.3".snafu_derive}"."rust_1_30" or false) ||
        (snafu."0.4.3"."rust_1_30" or false) ||
        (f."snafu"."0.4.3"."rust_1_30" or false); }
      { "${deps.snafu."0.4.3".snafu_derive}".default = true; }
    ];
  }) [
    (features_.backtrace."${deps."snafu"."0.4.3"."backtrace"}" deps)
    (features_.doc_comment."${deps."snafu"."0.4.3"."doc_comment"}" deps)
    (features_.snafu_derive."${deps."snafu"."0.4.3"."snafu_derive"}" deps)
  ];


# end
# snafu-derive-0.4.3

  crates.snafu_derive."0.4.3" = deps: { features?(features_.snafu_derive."0.4.3" deps {}) }: buildRustCrate {
    crateName = "snafu-derive";
    version = "0.4.3";
    authors = [ "Jake Goulding <jake.goulding@gmail.com>" ];
    sha256 = "1r2n2kad9dsa7b90jlrd3sp80qa0jyy392fsrkka41l6xfk7568p";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."snafu_derive"."0.4.3"."proc_macro2"}" deps)
      (crates."quote"."${deps."snafu_derive"."0.4.3"."quote"}" deps)
      (crates."syn"."${deps."snafu_derive"."0.4.3"."syn"}" deps)
    ]);
    features = mkFeatures (features."snafu_derive"."0.4.3" or {});
  };
  features_.snafu_derive."0.4.3" = deps: f: updateFeatures f (rec {
    proc_macro2."${deps.snafu_derive."0.4.3".proc_macro2}".default = true;
    quote."${deps.snafu_derive."0.4.3".quote}".default = true;
    snafu_derive."0.4.3".default = (f.snafu_derive."0.4.3".default or true);
    syn = fold recursiveUpdate {} [
      { "${deps.snafu_derive."0.4.3".syn}"."full" = true; }
      { "${deps.snafu_derive."0.4.3".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."snafu_derive"."0.4.3"."proc_macro2"}" deps)
    (features_.quote."${deps."snafu_derive"."0.4.3"."quote"}" deps)
    (features_.syn."${deps."snafu_derive"."0.4.3"."syn"}" deps)
  ];


# end
# stable_deref_trait-1.1.1

  crates.stable_deref_trait."1.1.1" = deps: { features?(features_.stable_deref_trait."1.1.1" deps {}) }: buildRustCrate {
    crateName = "stable_deref_trait";
    version = "1.1.1";
    authors = [ "Robert Grosse <n210241048576@gmail.com>" ];
    sha256 = "1xy9slzslrzr31nlnw52sl1d820b09y61b7f13lqgsn8n7y0l4g8";
    features = mkFeatures (features."stable_deref_trait"."1.1.1" or {});
  };
  features_.stable_deref_trait."1.1.1" = deps: f: updateFeatures f (rec {
    stable_deref_trait = fold recursiveUpdate {} [
      { "1.1.1".default = (f.stable_deref_trait."1.1.1".default or true); }
      { "1.1.1".std =
        (f.stable_deref_trait."1.1.1".std or false) ||
        (f.stable_deref_trait."1.1.1".default or false) ||
        (stable_deref_trait."1.1.1"."default" or false); }
    ];
  }) [];


# end
# syn-0.15.42

  crates.syn."0.15.42" = deps: { features?(features_.syn."0.15.42" deps {}) }: buildRustCrate {
    crateName = "syn";
    version = "0.15.42";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0yjvq4izrsp6pvpahr86m1mq09nbq6a27fizkmg76xh8fhwfpd79";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."syn"."0.15.42"."proc_macro2"}" deps)
      (crates."unicode_xid"."${deps."syn"."0.15.42"."unicode_xid"}" deps)
    ]
      ++ (if features.syn."0.15.42".quote or false then [ (crates.quote."${deps."syn"."0.15.42".quote}" deps) ] else []));
    features = mkFeatures (features."syn"."0.15.42" or {});
  };
  features_.syn."0.15.42" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.syn."0.15.42".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.syn."0.15.42".proc_macro2}"."proc-macro" or false) ||
        (syn."0.15.42"."proc-macro" or false) ||
        (f."syn"."0.15.42"."proc-macro" or false); }
      { "${deps.syn."0.15.42".proc_macro2}".default = (f.proc_macro2."${deps.syn."0.15.42".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "${deps.syn."0.15.42".quote}"."proc-macro" =
        (f.quote."${deps.syn."0.15.42".quote}"."proc-macro" or false) ||
        (syn."0.15.42"."proc-macro" or false) ||
        (f."syn"."0.15.42"."proc-macro" or false); }
      { "${deps.syn."0.15.42".quote}".default = (f.quote."${deps.syn."0.15.42".quote}".default or false); }
    ];
    syn = fold recursiveUpdate {} [
      { "0.15.42".clone-impls =
        (f.syn."0.15.42".clone-impls or false) ||
        (f.syn."0.15.42".default or false) ||
        (syn."0.15.42"."default" or false); }
      { "0.15.42".default = (f.syn."0.15.42".default or true); }
      { "0.15.42".derive =
        (f.syn."0.15.42".derive or false) ||
        (f.syn."0.15.42".default or false) ||
        (syn."0.15.42"."default" or false); }
      { "0.15.42".parsing =
        (f.syn."0.15.42".parsing or false) ||
        (f.syn."0.15.42".default or false) ||
        (syn."0.15.42"."default" or false); }
      { "0.15.42".printing =
        (f.syn."0.15.42".printing or false) ||
        (f.syn."0.15.42".default or false) ||
        (syn."0.15.42"."default" or false); }
      { "0.15.42".proc-macro =
        (f.syn."0.15.42".proc-macro or false) ||
        (f.syn."0.15.42".default or false) ||
        (syn."0.15.42"."default" or false); }
      { "0.15.42".quote =
        (f.syn."0.15.42".quote or false) ||
        (f.syn."0.15.42".printing or false) ||
        (syn."0.15.42"."printing" or false); }
    ];
    unicode_xid."${deps.syn."0.15.42".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."syn"."0.15.42"."proc_macro2"}" deps)
    (features_.quote."${deps."syn"."0.15.42"."quote"}" deps)
    (features_.unicode_xid."${deps."syn"."0.15.42"."unicode_xid"}" deps)
  ];


# end
# synstructure-0.10.2

  crates.synstructure."0.10.2" = deps: { features?(features_.synstructure."0.10.2" deps {}) }: buildRustCrate {
    crateName = "synstructure";
    version = "0.10.2";
    authors = [ "Nika Layzell <nika@thelayzells.com>" ];
    sha256 = "0bp29grjsim99xm1l6h38mbl98gnk47lf82rawlmws5zn4asdpj4";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."synstructure"."0.10.2"."proc_macro2"}" deps)
      (crates."quote"."${deps."synstructure"."0.10.2"."quote"}" deps)
      (crates."syn"."${deps."synstructure"."0.10.2"."syn"}" deps)
      (crates."unicode_xid"."${deps."synstructure"."0.10.2"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."synstructure"."0.10.2" or {});
  };
  features_.synstructure."0.10.2" = deps: f: updateFeatures f (rec {
    proc_macro2."${deps.synstructure."0.10.2".proc_macro2}".default = true;
    quote."${deps.synstructure."0.10.2".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.synstructure."0.10.2".syn}"."extra-traits" = true; }
      { "${deps.synstructure."0.10.2".syn}"."visit" = true; }
      { "${deps.synstructure."0.10.2".syn}".default = true; }
    ];
    synstructure."0.10.2".default = (f.synstructure."0.10.2".default or true);
    unicode_xid."${deps.synstructure."0.10.2".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."synstructure"."0.10.2"."proc_macro2"}" deps)
    (features_.quote."${deps."synstructure"."0.10.2"."quote"}" deps)
    (features_.syn."${deps."synstructure"."0.10.2"."syn"}" deps)
    (features_.unicode_xid."${deps."synstructure"."0.10.2"."unicode_xid"}" deps)
  ];


# end
# thread_local-0.3.6

  crates.thread_local."0.3.6" = deps: { features?(features_.thread_local."0.3.6" deps {}) }: buildRustCrate {
    crateName = "thread_local";
    version = "0.3.6";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "02rksdwjmz2pw9bmgbb4c0bgkbq5z6nvg510sq1s6y2j1gam0c7i";
    dependencies = mapFeatures features ([
      (crates."lazy_static"."${deps."thread_local"."0.3.6"."lazy_static"}" deps)
    ]);
  };
  features_.thread_local."0.3.6" = deps: f: updateFeatures f (rec {
    lazy_static."${deps.thread_local."0.3.6".lazy_static}".default = true;
    thread_local."0.3.6".default = (f.thread_local."0.3.6".default or true);
  }) [
    (features_.lazy_static."${deps."thread_local"."0.3.6"."lazy_static"}" deps)
  ];


# end
# time-0.1.42

  crates.time."0.1.42" = deps: { features?(features_.time."0.1.42" deps {}) }: buildRustCrate {
    crateName = "time";
    version = "0.1.42";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1ny809kmdjwd4b478ipc33dz7q6nq7rxk766x8cnrg6zygcksmmx";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."time"."0.1.42"."libc"}" deps)
    ])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."time"."0.1.42"."redox_syscall"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."time"."0.1.42"."winapi"}" deps)
    ]) else []);
  };
  features_.time."0.1.42" = deps: f: updateFeatures f (rec {
    libc."${deps.time."0.1.42".libc}".default = true;
    redox_syscall."${deps.time."0.1.42".redox_syscall}".default = true;
    time."0.1.42".default = (f.time."0.1.42".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.time."0.1.42".winapi}"."minwinbase" = true; }
      { "${deps.time."0.1.42".winapi}"."minwindef" = true; }
      { "${deps.time."0.1.42".winapi}"."ntdef" = true; }
      { "${deps.time."0.1.42".winapi}"."profileapi" = true; }
      { "${deps.time."0.1.42".winapi}"."std" = true; }
      { "${deps.time."0.1.42".winapi}"."sysinfoapi" = true; }
      { "${deps.time."0.1.42".winapi}"."timezoneapi" = true; }
      { "${deps.time."0.1.42".winapi}".default = true; }
    ];
  }) [
    (features_.libc."${deps."time"."0.1.42"."libc"}" deps)
    (features_.redox_syscall."${deps."time"."0.1.42"."redox_syscall"}" deps)
    (features_.winapi."${deps."time"."0.1.42"."winapi"}" deps)
  ];


# end
# ucd-util-0.1.5

  crates.ucd_util."0.1.5" = deps: { features?(features_.ucd_util."0.1.5" deps {}) }: buildRustCrate {
    crateName = "ucd-util";
    version = "0.1.5";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0c2lxv2b382n3pw1vnx4plnp371qplhfaag6w67qs11cmfflxhl6";
  };
  features_.ucd_util."0.1.5" = deps: f: updateFeatures f (rec {
    ucd_util."0.1.5".default = (f.ucd_util."0.1.5".default or true);
  }) [];


# end
# unicode-xid-0.1.0

  crates.unicode_xid."0.1.0" = deps: { features?(features_.unicode_xid."0.1.0" deps {}) }: buildRustCrate {
    crateName = "unicode-xid";
    version = "0.1.0";
    authors = [ "erick.tryzelaar <erick.tryzelaar@gmail.com>" "kwantam <kwantam@gmail.com>" ];
    sha256 = "05wdmwlfzxhq3nhsxn6wx4q8dhxzzfb9szsz6wiw092m1rjj01zj";
    features = mkFeatures (features."unicode_xid"."0.1.0" or {});
  };
  features_.unicode_xid."0.1.0" = deps: f: updateFeatures f (rec {
    unicode_xid."0.1.0".default = (f.unicode_xid."0.1.0".default or true);
  }) [];


# end
# utf8-ranges-1.0.3

  crates.utf8_ranges."1.0.3" = deps: { features?(features_.utf8_ranges."1.0.3" deps {}) }: buildRustCrate {
    crateName = "utf8-ranges";
    version = "1.0.3";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0nkh73y241czrxagm77qz20qcfn3h54a6v9cpvc7wjzwkaaqkswp";
  };
  features_.utf8_ranges."1.0.3" = deps: f: updateFeatures f (rec {
    utf8_ranges."1.0.3".default = (f.utf8_ranges."1.0.3".default or true);
  }) [];


# end
# void-1.0.2

  crates.void."1.0.2" = deps: { features?(features_.void."1.0.2" deps {}) }: buildRustCrate {
    crateName = "void";
    version = "1.0.2";
    authors = [ "Jonathan Reem <jonathan.reem@gmail.com>" ];
    sha256 = "0h1dm0dx8dhf56a83k68mijyxigqhizpskwxfdrs1drwv2cdclv3";
    features = mkFeatures (features."void"."1.0.2" or {});
  };
  features_.void."1.0.2" = deps: f: updateFeatures f (rec {
    void = fold recursiveUpdate {} [
      { "1.0.2".default = (f.void."1.0.2".default or true); }
      { "1.0.2".std =
        (f.void."1.0.2".std or false) ||
        (f.void."1.0.2".default or false) ||
        (void."1.0.2"."default" or false); }
    ];
  }) [];


# end
# wasm-bindgen-0.2.48

  crates.wasm_bindgen."0.2.48" = deps: { features?(features_.wasm_bindgen."0.2.48" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen";
    version = "0.2.48";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "08csbwm1z6c06f2iclglfqz3bqvc5zcff0agicmi6w5li7cw6sv2";
    dependencies = mapFeatures features ([
      (crates."wasm_bindgen_macro"."${deps."wasm_bindgen"."0.2.48"."wasm_bindgen_macro"}" deps)
    ]);
    features = mkFeatures (features."wasm_bindgen"."0.2.48" or {});
  };
  features_.wasm_bindgen."0.2.48" = deps: f: updateFeatures f (rec {
    wasm_bindgen = fold recursiveUpdate {} [
      { "0.2.48".default = (f.wasm_bindgen."0.2.48".default or true); }
      { "0.2.48".serde =
        (f.wasm_bindgen."0.2.48".serde or false) ||
        (f.wasm_bindgen."0.2.48".serde-serialize or false) ||
        (wasm_bindgen."0.2.48"."serde-serialize" or false); }
      { "0.2.48".serde_json =
        (f.wasm_bindgen."0.2.48".serde_json or false) ||
        (f.wasm_bindgen."0.2.48".serde-serialize or false) ||
        (wasm_bindgen."0.2.48"."serde-serialize" or false); }
      { "0.2.48".spans =
        (f.wasm_bindgen."0.2.48".spans or false) ||
        (f.wasm_bindgen."0.2.48".default or false) ||
        (wasm_bindgen."0.2.48"."default" or false); }
      { "0.2.48".std =
        (f.wasm_bindgen."0.2.48".std or false) ||
        (f.wasm_bindgen."0.2.48".default or false) ||
        (wasm_bindgen."0.2.48"."default" or false) ||
        (f.wasm_bindgen."0.2.48".serde-serialize or false) ||
        (wasm_bindgen."0.2.48"."serde-serialize" or false); }
    ];
    wasm_bindgen_macro = fold recursiveUpdate {} [
      { "${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."spans" =
        (f.wasm_bindgen_macro."${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."spans" or false) ||
        (wasm_bindgen."0.2.48"."spans" or false) ||
        (f."wasm_bindgen"."0.2.48"."spans" or false); }
      { "${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."strict-macro" =
        (f.wasm_bindgen_macro."${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."strict-macro" or false) ||
        (wasm_bindgen."0.2.48"."strict-macro" or false) ||
        (f."wasm_bindgen"."0.2.48"."strict-macro" or false); }
      { "${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."xxx_debug_only_print_generated_code" =
        (f.wasm_bindgen_macro."${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}"."xxx_debug_only_print_generated_code" or false) ||
        (wasm_bindgen."0.2.48"."xxx_debug_only_print_generated_code" or false) ||
        (f."wasm_bindgen"."0.2.48"."xxx_debug_only_print_generated_code" or false); }
      { "${deps.wasm_bindgen."0.2.48".wasm_bindgen_macro}".default = true; }
    ];
  }) [
    (features_.wasm_bindgen_macro."${deps."wasm_bindgen"."0.2.48"."wasm_bindgen_macro"}" deps)
  ];


# end
# wasm-bindgen-backend-0.2.48

  crates.wasm_bindgen_backend."0.2.48" = deps: { features?(features_.wasm_bindgen_backend."0.2.48" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen-backend";
    version = "0.2.48";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "1ywi5hlci9nnm705zsxl3841jpik49l47lv4x3gxb5zmxp3qa2ny";
    dependencies = mapFeatures features ([
      (crates."bumpalo"."${deps."wasm_bindgen_backend"."0.2.48"."bumpalo"}" deps)
      (crates."lazy_static"."${deps."wasm_bindgen_backend"."0.2.48"."lazy_static"}" deps)
      (crates."log"."${deps."wasm_bindgen_backend"."0.2.48"."log"}" deps)
      (crates."proc_macro2"."${deps."wasm_bindgen_backend"."0.2.48"."proc_macro2"}" deps)
      (crates."quote"."${deps."wasm_bindgen_backend"."0.2.48"."quote"}" deps)
      (crates."syn"."${deps."wasm_bindgen_backend"."0.2.48"."syn"}" deps)
      (crates."wasm_bindgen_shared"."${deps."wasm_bindgen_backend"."0.2.48"."wasm_bindgen_shared"}" deps)
    ]);
    features = mkFeatures (features."wasm_bindgen_backend"."0.2.48" or {});
  };
  features_.wasm_bindgen_backend."0.2.48" = deps: f: updateFeatures f (rec {
    bumpalo."${deps.wasm_bindgen_backend."0.2.48".bumpalo}".default = true;
    lazy_static."${deps.wasm_bindgen_backend."0.2.48".lazy_static}".default = true;
    log."${deps.wasm_bindgen_backend."0.2.48".log}".default = true;
    proc_macro2."${deps.wasm_bindgen_backend."0.2.48".proc_macro2}".default = true;
    quote."${deps.wasm_bindgen_backend."0.2.48".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.wasm_bindgen_backend."0.2.48".syn}"."extra-traits" =
        (f.syn."${deps.wasm_bindgen_backend."0.2.48".syn}"."extra-traits" or false) ||
        (wasm_bindgen_backend."0.2.48"."extra-traits" or false) ||
        (f."wasm_bindgen_backend"."0.2.48"."extra-traits" or false); }
      { "${deps.wasm_bindgen_backend."0.2.48".syn}"."full" = true; }
      { "${deps.wasm_bindgen_backend."0.2.48".syn}".default = true; }
    ];
    wasm_bindgen_backend."0.2.48".default = (f.wasm_bindgen_backend."0.2.48".default or true);
    wasm_bindgen_shared."${deps.wasm_bindgen_backend."0.2.48".wasm_bindgen_shared}".default = true;
  }) [
    (features_.bumpalo."${deps."wasm_bindgen_backend"."0.2.48"."bumpalo"}" deps)
    (features_.lazy_static."${deps."wasm_bindgen_backend"."0.2.48"."lazy_static"}" deps)
    (features_.log."${deps."wasm_bindgen_backend"."0.2.48"."log"}" deps)
    (features_.proc_macro2."${deps."wasm_bindgen_backend"."0.2.48"."proc_macro2"}" deps)
    (features_.quote."${deps."wasm_bindgen_backend"."0.2.48"."quote"}" deps)
    (features_.syn."${deps."wasm_bindgen_backend"."0.2.48"."syn"}" deps)
    (features_.wasm_bindgen_shared."${deps."wasm_bindgen_backend"."0.2.48"."wasm_bindgen_shared"}" deps)
  ];


# end
# wasm-bindgen-futures-0.3.25

  crates.wasm_bindgen_futures."0.3.25" = deps: { features?(features_.wasm_bindgen_futures."0.3.25" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen-futures";
    version = "0.3.25";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "0f7hm3y1cha7s9ksd3vdl61asrm99db7q661xyd6wym1vimk9g7h";
    dependencies = mapFeatures features ([
      (crates."futures"."${deps."wasm_bindgen_futures"."0.3.25"."futures"}" deps)
      (crates."js_sys"."${deps."wasm_bindgen_futures"."0.3.25"."js_sys"}" deps)
      (crates."wasm_bindgen"."${deps."wasm_bindgen_futures"."0.3.25"."wasm_bindgen"}" deps)
    ])
      ++ (if cpu == "wasm32" then mapFeatures features ([
]) else []);
    features = mkFeatures (features."wasm_bindgen_futures"."0.3.25" or {});
  };
  features_.wasm_bindgen_futures."0.3.25" = deps: f: updateFeatures f (rec {
    futures."${deps.wasm_bindgen_futures."0.3.25".futures}".default = true;
    js_sys."${deps.wasm_bindgen_futures."0.3.25".js_sys}".default = true;
    wasm_bindgen."${deps.wasm_bindgen_futures."0.3.25".wasm_bindgen}".default = true;
    wasm_bindgen_futures = fold recursiveUpdate {} [
      { "0.3.25".default = (f.wasm_bindgen_futures."0.3.25".default or true); }
      { "0.3.25".futures-channel-preview =
        (f.wasm_bindgen_futures."0.3.25".futures-channel-preview or false) ||
        (f.wasm_bindgen_futures."0.3.25".futures_0_3 or false) ||
        (wasm_bindgen_futures."0.3.25"."futures_0_3" or false); }
      { "0.3.25".futures-util-preview =
        (f.wasm_bindgen_futures."0.3.25".futures-util-preview or false) ||
        (f.wasm_bindgen_futures."0.3.25".futures_0_3 or false) ||
        (wasm_bindgen_futures."0.3.25"."futures_0_3" or false); }
      { "0.3.25".lazy_static =
        (f.wasm_bindgen_futures."0.3.25".lazy_static or false) ||
        (f.wasm_bindgen_futures."0.3.25".futures_0_3 or false) ||
        (wasm_bindgen_futures."0.3.25"."futures_0_3" or false); }
    ];
  }) [
    (features_.futures."${deps."wasm_bindgen_futures"."0.3.25"."futures"}" deps)
    (features_.js_sys."${deps."wasm_bindgen_futures"."0.3.25"."js_sys"}" deps)
    (features_.wasm_bindgen."${deps."wasm_bindgen_futures"."0.3.25"."wasm_bindgen"}" deps)
  ];


# end
# wasm-bindgen-macro-0.2.48

  crates.wasm_bindgen_macro."0.2.48" = deps: { features?(features_.wasm_bindgen_macro."0.2.48" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen-macro";
    version = "0.2.48";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "0l5mr7szk3kbmmpjvi0a4a2mfh0y1yrpjk5902mymgpxs8hqjsgc";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."quote"."${deps."wasm_bindgen_macro"."0.2.48"."quote"}" deps)
      (crates."wasm_bindgen_macro_support"."${deps."wasm_bindgen_macro"."0.2.48"."wasm_bindgen_macro_support"}" deps)
    ]);
    features = mkFeatures (features."wasm_bindgen_macro"."0.2.48" or {});
  };
  features_.wasm_bindgen_macro."0.2.48" = deps: f: updateFeatures f (rec {
    quote."${deps.wasm_bindgen_macro."0.2.48".quote}".default = true;
    wasm_bindgen_macro."0.2.48".default = (f.wasm_bindgen_macro."0.2.48".default or true);
    wasm_bindgen_macro_support = fold recursiveUpdate {} [
      { "${deps.wasm_bindgen_macro."0.2.48".wasm_bindgen_macro_support}"."spans" =
        (f.wasm_bindgen_macro_support."${deps.wasm_bindgen_macro."0.2.48".wasm_bindgen_macro_support}"."spans" or false) ||
        (wasm_bindgen_macro."0.2.48"."spans" or false) ||
        (f."wasm_bindgen_macro"."0.2.48"."spans" or false); }
      { "${deps.wasm_bindgen_macro."0.2.48".wasm_bindgen_macro_support}"."strict-macro" =
        (f.wasm_bindgen_macro_support."${deps.wasm_bindgen_macro."0.2.48".wasm_bindgen_macro_support}"."strict-macro" or false) ||
        (wasm_bindgen_macro."0.2.48"."strict-macro" or false) ||
        (f."wasm_bindgen_macro"."0.2.48"."strict-macro" or false); }
      { "${deps.wasm_bindgen_macro."0.2.48".wasm_bindgen_macro_support}".default = true; }
    ];
  }) [
    (features_.quote."${deps."wasm_bindgen_macro"."0.2.48"."quote"}" deps)
    (features_.wasm_bindgen_macro_support."${deps."wasm_bindgen_macro"."0.2.48"."wasm_bindgen_macro_support"}" deps)
  ];


# end
# wasm-bindgen-macro-support-0.2.48

  crates.wasm_bindgen_macro_support."0.2.48" = deps: { features?(features_.wasm_bindgen_macro_support."0.2.48" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen-macro-support";
    version = "0.2.48";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "0bqapkxzn3cd4mmnmyqhzljhql6yn2kyn4z7jfb5frc2hys0bcr8";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."wasm_bindgen_macro_support"."0.2.48"."proc_macro2"}" deps)
      (crates."quote"."${deps."wasm_bindgen_macro_support"."0.2.48"."quote"}" deps)
      (crates."syn"."${deps."wasm_bindgen_macro_support"."0.2.48"."syn"}" deps)
      (crates."wasm_bindgen_backend"."${deps."wasm_bindgen_macro_support"."0.2.48"."wasm_bindgen_backend"}" deps)
      (crates."wasm_bindgen_shared"."${deps."wasm_bindgen_macro_support"."0.2.48"."wasm_bindgen_shared"}" deps)
    ]);
    features = mkFeatures (features."wasm_bindgen_macro_support"."0.2.48" or {});
  };
  features_.wasm_bindgen_macro_support."0.2.48" = deps: f: updateFeatures f (rec {
    proc_macro2."${deps.wasm_bindgen_macro_support."0.2.48".proc_macro2}".default = true;
    quote."${deps.wasm_bindgen_macro_support."0.2.48".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.wasm_bindgen_macro_support."0.2.48".syn}"."extra-traits" =
        (f.syn."${deps.wasm_bindgen_macro_support."0.2.48".syn}"."extra-traits" or false) ||
        (wasm_bindgen_macro_support."0.2.48"."extra-traits" or false) ||
        (f."wasm_bindgen_macro_support"."0.2.48"."extra-traits" or false); }
      { "${deps.wasm_bindgen_macro_support."0.2.48".syn}"."visit" = true; }
      { "${deps.wasm_bindgen_macro_support."0.2.48".syn}".default = true; }
    ];
    wasm_bindgen_backend = fold recursiveUpdate {} [
      { "${deps.wasm_bindgen_macro_support."0.2.48".wasm_bindgen_backend}"."spans" =
        (f.wasm_bindgen_backend."${deps.wasm_bindgen_macro_support."0.2.48".wasm_bindgen_backend}"."spans" or false) ||
        (wasm_bindgen_macro_support."0.2.48"."spans" or false) ||
        (f."wasm_bindgen_macro_support"."0.2.48"."spans" or false); }
      { "${deps.wasm_bindgen_macro_support."0.2.48".wasm_bindgen_backend}".default = true; }
    ];
    wasm_bindgen_macro_support."0.2.48".default = (f.wasm_bindgen_macro_support."0.2.48".default or true);
    wasm_bindgen_shared."${deps.wasm_bindgen_macro_support."0.2.48".wasm_bindgen_shared}".default = true;
  }) [
    (features_.proc_macro2."${deps."wasm_bindgen_macro_support"."0.2.48"."proc_macro2"}" deps)
    (features_.quote."${deps."wasm_bindgen_macro_support"."0.2.48"."quote"}" deps)
    (features_.syn."${deps."wasm_bindgen_macro_support"."0.2.48"."syn"}" deps)
    (features_.wasm_bindgen_backend."${deps."wasm_bindgen_macro_support"."0.2.48"."wasm_bindgen_backend"}" deps)
    (features_.wasm_bindgen_shared."${deps."wasm_bindgen_macro_support"."0.2.48"."wasm_bindgen_shared"}" deps)
  ];


# end
# wasm-bindgen-shared-0.2.48

  crates.wasm_bindgen_shared."0.2.48" = deps: { features?(features_.wasm_bindgen_shared."0.2.48" deps {}) }: buildRustCrate {
    crateName = "wasm-bindgen-shared";
    version = "0.2.48";
    authors = [ "The wasm-bindgen Developers" ];
    edition = "2018";
    sha256 = "1ns82mlwf4cv3p7w176zpsh5xklfad5xf4b24rqdhf39kin6ijdh";
  };
  features_.wasm_bindgen_shared."0.2.48" = deps: f: updateFeatures f (rec {
    wasm_bindgen_shared."0.2.48".default = (f.wasm_bindgen_shared."0.2.48".default or true);
  }) [];


# end
# widestring-0.4.0

  crates.widestring."0.4.0" = deps: { features?(features_.widestring."0.4.0" deps {}) }: buildRustCrate {
    crateName = "widestring";
    version = "0.4.0";
    authors = [ "Kathryn Long <squeeself@gmail.com>" ];
    sha256 = "12j8w7jsn60wr1wir2dnspn3b0480my2ksa95f3qxyvb8h1q7xnj";
  };
  features_.widestring."0.4.0" = deps: f: updateFeatures f (rec {
    widestring."0.4.0".default = (f.widestring."0.4.0".default or true);
  }) [];


# end
# winapi-0.2.8

  crates.winapi."0.2.8" = deps: { features?(features_.winapi."0.2.8" deps {}) }: buildRustCrate {
    crateName = "winapi";
    version = "0.2.8";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0a45b58ywf12vb7gvj6h3j264nydynmzyqz8d8rqxsj6icqv82as";
  };
  features_.winapi."0.2.8" = deps: f: updateFeatures f (rec {
    winapi."0.2.8".default = (f.winapi."0.2.8".default or true);
  }) [];


# end
# winapi-0.3.7

  crates.winapi."0.3.7" = deps: { features?(features_.winapi."0.3.7" deps {}) }: buildRustCrate {
    crateName = "winapi";
    version = "0.3.7";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1k51gfkp0zqw7nj07y443mscs46icmdhld442s2073niap0kkdr8";
    build = "build.rs";
    dependencies = (if kernel == "i686-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_i686_pc_windows_gnu"."${deps."winapi"."0.3.7"."winapi_i686_pc_windows_gnu"}" deps)
    ]) else [])
      ++ (if kernel == "x86_64-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_x86_64_pc_windows_gnu"."${deps."winapi"."0.3.7"."winapi_x86_64_pc_windows_gnu"}" deps)
    ]) else []);
    features = mkFeatures (features."winapi"."0.3.7" or {});
  };
  features_.winapi."0.3.7" = deps: f: updateFeatures f (rec {
    winapi = fold recursiveUpdate {} [
      { "0.3.7".default = (f.winapi."0.3.7".default or true); }
      { "0.3.7".impl-debug =
        (f.winapi."0.3.7".impl-debug or false) ||
        (f.winapi."0.3.7".debug or false) ||
        (winapi."0.3.7"."debug" or false); }
    ];
    winapi_i686_pc_windows_gnu."${deps.winapi."0.3.7".winapi_i686_pc_windows_gnu}".default = true;
    winapi_x86_64_pc_windows_gnu."${deps.winapi."0.3.7".winapi_x86_64_pc_windows_gnu}".default = true;
  }) [
    (features_.winapi_i686_pc_windows_gnu."${deps."winapi"."0.3.7"."winapi_i686_pc_windows_gnu"}" deps)
    (features_.winapi_x86_64_pc_windows_gnu."${deps."winapi"."0.3.7"."winapi_x86_64_pc_windows_gnu"}" deps)
  ];


# end
# winapi-build-0.1.1

  crates.winapi_build."0.1.1" = deps: { features?(features_.winapi_build."0.1.1" deps {}) }: buildRustCrate {
    crateName = "winapi-build";
    version = "0.1.1";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1lxlpi87rkhxcwp2ykf1ldw3p108hwm24nywf3jfrvmff4rjhqga";
    libName = "build";
  };
  features_.winapi_build."0.1.1" = deps: f: updateFeatures f (rec {
    winapi_build."0.1.1".default = (f.winapi_build."0.1.1".default or true);
  }) [];


# end
# winapi-i686-pc-windows-gnu-0.4.0

  crates.winapi_i686_pc_windows_gnu."0.4.0" = deps: { features?(features_.winapi_i686_pc_windows_gnu."0.4.0" deps {}) }: buildRustCrate {
    crateName = "winapi-i686-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "05ihkij18r4gamjpxj4gra24514can762imjzlmak5wlzidplzrp";
    build = "build.rs";
  };
  features_.winapi_i686_pc_windows_gnu."0.4.0" = deps: f: updateFeatures f (rec {
    winapi_i686_pc_windows_gnu."0.4.0".default = (f.winapi_i686_pc_windows_gnu."0.4.0".default or true);
  }) [];


# end
# winapi-x86_64-pc-windows-gnu-0.4.0

  crates.winapi_x86_64_pc_windows_gnu."0.4.0" = deps: { features?(features_.winapi_x86_64_pc_windows_gnu."0.4.0" deps {}) }: buildRustCrate {
    crateName = "winapi-x86_64-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0n1ylmlsb8yg1v583i4xy0qmqg42275flvbc51hdqjjfjcl9vlbj";
    build = "build.rs";
  };
  features_.winapi_x86_64_pc_windows_gnu."0.4.0" = deps: f: updateFeatures f (rec {
    winapi_x86_64_pc_windows_gnu."0.4.0".default = (f.winapi_x86_64_pc_windows_gnu."0.4.0".default or true);
  }) [];


# end
# ws2_32-sys-0.2.1

  crates.ws2_32_sys."0.2.1" = deps: { features?(features_.ws2_32_sys."0.2.1" deps {}) }: buildRustCrate {
    crateName = "ws2_32-sys";
    version = "0.2.1";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1zpy9d9wk11sj17fczfngcj28w4xxjs3b4n036yzpy38dxp4f7kc";
    libName = "ws2_32";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."winapi"."${deps."ws2_32_sys"."0.2.1"."winapi"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."winapi_build"."${deps."ws2_32_sys"."0.2.1"."winapi_build"}" deps)
    ]);
  };
  features_.ws2_32_sys."0.2.1" = deps: f: updateFeatures f (rec {
    winapi."${deps.ws2_32_sys."0.2.1".winapi}".default = true;
    winapi_build."${deps.ws2_32_sys."0.2.1".winapi_build}".default = true;
    ws2_32_sys."0.2.1".default = (f.ws2_32_sys."0.2.1".default or true);
  }) [
    (features_.winapi."${deps."ws2_32_sys"."0.2.1"."winapi"}" deps)
    (features_.winapi_build."${deps."ws2_32_sys"."0.2.1"."winapi_build"}" deps)
  ];


# end
}
