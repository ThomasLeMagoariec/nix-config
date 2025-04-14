# shell.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    elfutils
  ];
  nativeBuildInputs = with pkgs; [
    pkg-config
  ];
}

