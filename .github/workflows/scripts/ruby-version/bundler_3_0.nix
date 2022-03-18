with (import <nixpkgs> {});
let
  myBundler = bundler.override { ruby = ruby_3_0; };
in
mkShell {
  name = "bundler-shell";
  buildInputs = [ myBundler ];
}
