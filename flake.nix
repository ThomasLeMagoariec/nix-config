{
  description = "My NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... } @ inputs:
  let
    hostPlatform = "x86_64-linux";
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        nixpkgs.hostPlatform = hostPlatform;
        specialArgs = { inherit inputs hostPlatform; };
        modules = [
          ./configuration.nix
          ./modules/hyprland
          ./modules/dev
          ./modules/apps
          ./modules/random
        ];
      };

    };
  };
}

