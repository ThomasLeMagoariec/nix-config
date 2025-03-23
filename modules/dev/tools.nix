{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go          # Go programming language
    python3     # Python 3 interpreter
    python3Packages.pip  # Python package manager
    nodejs      # Node.js runtime (optional)
    git         # Version control
  ];
}

