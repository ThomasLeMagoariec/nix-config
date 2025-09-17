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
        harware.enableAllFirmware = true;
        hardware.enable32Bit = true;
        nixosConfigurations = {

            # kinda default user
            nixos = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs system; };
                modules = [ ./hosts/thomas/default.nix ];
            };
            thomas = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs system; };
                modules = [ ./hosts/thomas/default.nix ];
            };
        };
    };
}

