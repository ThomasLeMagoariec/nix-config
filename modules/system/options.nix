{ config, lib, pkgs, ...}:

{
    options = {
        my.arbitrary.option = lib.mkOption {
            type = lib.types.str;
            default = "hello";
        };
    };
}
