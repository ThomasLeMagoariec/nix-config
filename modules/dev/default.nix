{ config, lib, pkgs, ... }:

{
  imports = [
    ./editors.nix
        # ./compilers.nix
    ./tools.nix
  ];
}

