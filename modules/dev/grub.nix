{ pkgs, ... }:

let
  catppuccin-grub-theme = pkgs.stdenv.mkDerivation {
    pname = "catppuccin-grub-theme";
    version = "latest";

    src = pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "grub";
      rev = "7ceef1457ff5bafe0ed61f46df87d352dc6e641f"; # or use latest commit
      sha256 = "sha256-LPjEcZrXlC+BLAGs4B0LV/HjeZrRX3Y8HQ5FV3l6Yl8=";
    };

    installPhase = ''
      mkdir -p $out/share/grub/themes/Catppuccin
      cp -r src/* $out/share/grub/themes/Catppuccin/
    '';
  };
in
{
  boot.loader.grub = {
    enable = true;
    version = 2;
    theme = "${catppuccin-grub-theme}/share/grub/themes/Catppuccin";
  };
}

