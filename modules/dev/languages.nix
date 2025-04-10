{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        go                      # golang
        python3                 # python 3.12.9
        python3Packages.pip     # pip (the worlds worst package manager)
        nodejs                  # useful for anything and everything
        gcc11                   # C/C++

        pyright                 # python LSP
        dotnet-sdk_9            # C# (9 for nvim plugins, 7 for school work)
    ];
}

