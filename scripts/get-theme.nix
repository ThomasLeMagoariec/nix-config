{ config, lib, ... }:

let
  theme = config.theme or "default-theme";
in
  theme

