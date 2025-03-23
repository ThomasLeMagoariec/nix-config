{
  description = "Dev tools";

  inputs = {
        editors.url = "./editors.nix";
  };

  outputs = { self, nixpkgs, editors, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        editors.nixosModules.default
      ];
    };
  };
}

