{ pkgs ? import <nixpkgs> { }, src ? ./., subdir ? "" }:
let theSource = src; in
pkgs.buildGoModule {
  pname = "headscale";
  version = "v0.26.1";

  src = "${theSource}/${subdir}";

  vendorHash = "lib.fakeSha256";
  proxyVendor = true;
  nativeBuildInputs = [pkgs.gccgo15];
}
