self: super:

rec {
    rustc = (self.rustChannelOf {
        channel = "nightly";
        date = "2019-07-22";
    }).rust;
    rust = {
        rustc = self.hiPrio rustc;
        cargo = self.lowPrio rustc;
    };
    rustPlatform = self.recurseIntoAttrs (self.makeRustPlatform rust);
}
