{
  description = "Editors module flake";


  outputs = { nixpkgs, ... }: {
    nixosModules.editors = { config, pkgs, ... }: {
      environment.systemPackages = with pkgs; [ vim neovim ];
    };
  };
}

