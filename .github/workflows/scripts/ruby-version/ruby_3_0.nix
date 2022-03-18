with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "example-for-floehopper";

    ruby = ruby_3_0;
    gemdir = ./.;
  };
in mkShell { buildInputs = [ gems gems.wrappedRuby ]; }
