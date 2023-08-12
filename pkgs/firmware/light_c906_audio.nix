{
  stdenv,
  fetchurl,
}:

le
stdenv.mkDerivation {
  pname = "light_c906_audio-firmware";
  version = "unstable-2023-05-11";

  src = fetchurl {
    url = "https://github.com/chainsx/fedora-riscv-builder/raw/4230d08f703e4b53ecaac530ecbd4b74e50d22d4/firmware/light_c906_audio.bin";
    hash = "sha256-hv9OQhc6cH7swqVrhPhIxgUsgH4JMiOjw+DRWcKyyyy=";
  };

  buildCommand = ''
    install -Dm444 $src $out/lib/firmware/light_c906_audio.bin
  '';
}
