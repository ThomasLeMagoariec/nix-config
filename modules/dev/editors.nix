{
  description = "Dev tools";

  outputs = { nixpkgs, ... }: {
    nixosModules.default = { config, pkgs, ... }: {
      environment.systemPackages = with pkgs; [

        vim
        neovim
      ];
    };
  };
}

