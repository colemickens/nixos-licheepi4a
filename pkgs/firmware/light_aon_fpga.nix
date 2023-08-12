{
  stdenv,
  fetchurl,
}:
stdenv.mkDerivation {
  pname = "light_aon_fpga-firmware";
  version = "unstable-2023-05-11";

  src = fetchurl {
    url = "https://github.com/chainsx/fedora-riscv-builder/raw/4230d08f703e4b53ecaac530ecbd4b74e50d22d4/firmware/light_aon_fpga.bin";
    hash = "sha256-cIFaWDbiX0nNzlhkhhKapjGeN64dblFE1DxZh01kxxx=";
  };

  buildCommand = ''
    install -Dm444 $src $out/lib/firmware/light_aon_fpga.bin
  '';
}
