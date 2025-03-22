{
  description = "Best NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    
    # Import external modules
    hyprland.url = "/home/thomas/coding/nix/flakes/modules/hypr";
    dev.url = "/home/thomas/coding/nix/flakes/modules/dev";
  };

  outputs = { self, nixpkgs, hyprland, dev, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        hyprland.nixosModules.default
        dev.nixosModules.default
      ];
    };
  };
}

