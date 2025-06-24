{ config, pkgs, ... }:

{
    programs.firefox = {
        enable = true;

        policies = {
            Homepage = {
                StartPage = "https://search.brave.com/";
                Locked = true;
            };

            SearchEngines = {
                Default = "Brave";
                PreventInstalls = false;
            };

            ExtensionSettings = {
                "protonpass@proton.me" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/latest/proton-pass/latest.xpi";
                    installation_mode = "force_installed";
                };
            };

            Extensions = {
                Install = [
                    "https://addons.mozilla.org/firefox/downloads/latest/firefox-color/latest.xpi"
                ];
            };
        };
    };
}

