{ config, lib, pkgs, ... }:

{
  programs.neovim.enable = true; # nvim as main, vim as backup
  programs.vim.enable = true; 
}

