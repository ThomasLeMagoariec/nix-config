{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flex
        bison
    ];
}
