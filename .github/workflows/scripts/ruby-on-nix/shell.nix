with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "example-for-floehopper";

    ruby = ruby;
    gemdir = ./.;
  };
in mkShell { buildInputs = [ gems gems.wrappedRuby ]; }
