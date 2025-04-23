{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.05.tar.gz") {} }:

pkgs.mkShell {
    buildInputs = [
        pkgs.dotnet-sdk_7
        pkgs.zsh
    ];

    shellHook = ''
        echo "Using an older Nixpkgs version with .NET 7!"
        dotnet --version
    '';
}

