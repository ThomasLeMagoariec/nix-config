{ pkgs, ... }:

let
  catppuccin-grub-theme = pkgs.stdenv.mkDerivation {
    pname = "catppuccin-grub-theme";
    version = "latest";

    src = pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "grub";
      rev = "2a5c8be8185dae49dd22030df45860df8c796312"; # or use latest commit
      sha256 = "sha256-20D1EcV8SWOd5BLdAc6FaQu3onha0+aS5yA/GK8Ra0g=";
    };

    installPhase = ''
      mkdir -p $out/share/grub/themes/Catppuccin
      cp -r src/* $out/share/grub/themes/Catppuccin/
    '';
  };
in
{
  boot.loader.grub = {
    devices = [
        "/dev/nvme0n1"
    ];
    enable = true;
    version = 2;
    theme = "${catppuccin-grub-theme}/share/grub/themes/Catppuccin";
  };
}

