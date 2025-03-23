 { config, lib, pkgs, ... }:

{
  programs.git.enable = true;
  programs.git-lfs.enable = true;
  programs.lazygit.enable = true;
}

