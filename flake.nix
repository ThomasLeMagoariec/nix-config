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
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };
    };
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
          ./configuration.nix  # Ensure this file exists
          ./modules/hyprland
          ./modules/dev
          ./modules/apps
          ./modules/random
        ];
      };
      paul = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
            ./configuration.nix
            ./modules/dev
            ./modules/apps
        ];
      };
    };
  };
}

