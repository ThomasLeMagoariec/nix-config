{
    description = "Home Manager configuration";

    inputs = {
        # Specify the source of Home Manager and Nixpkgs.
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        inputs.nixvim = {
            url = "github:nix-community/nixvim";
            # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
            inputs.nixpkgs.follows = "nixpkgs";
        };

    };

    outputs = { nixpkgs, home-manager, ... }:
    let
            system = "x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
    in {

        # it is possible to configure different users
        homeConfigurations = {
            # kinda default user, also consistency with nix config
            "nixos" = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ../hosts/thomas/home.nix ];
            };
            "thomas" = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ../hosts/thomas/home.nix ];
            };
            "school" = home-manager.lib.hosts {
                inherit pkgs;
                modules = [ ../hosts/school/home.nix ];
            };
        };
    };
}
