{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    python3
    python3Packages.pip
    nodejs
    gcc11

    pyright
    dotnet-sdk_9
  ];
}

