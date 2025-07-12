{ pkgs ? import <nixpkgs> { }, src ? ./., subdir ? "" }:
let theSource = src; in
pkgs.buildGoModule {
  pname = "headscale";
  version = "v0.26.1";

  src = "${theSource}/${subdir}";

  vendorHash = "lib.fakeHash";
  proxyVendor = true;
  sha256 = "sha256-wg2y6/kAEg51be5tZjMyESUkLD8SFniMxoLcBdlvTfA=";
  nativeBuildInputs = [pkgs.gccgo15];
}