{
  pkgs,
  inputs,
  ...
}:
pkgs.mkShell rec {
  nativeBuildInputs = with pkgs; [
    age
    sops
    cachix
    deadnix
    statix
    nixfmt-rfc-style
    nixd
    cargo-edit
  ];

  buildInputs = nativeBuildInputs;
}
