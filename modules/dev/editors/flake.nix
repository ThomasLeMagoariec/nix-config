{
  description = "Editors module flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    nixosModules.editors = { config, pkgs, ... }: {
      environment.systemPackages = with pkgs; [ vim neovim ];
    };
  };
}

