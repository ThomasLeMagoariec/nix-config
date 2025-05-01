{ pkgs, ... }: {
    programs.nixvim.plugins = {
    };
    
    programs.nixvim.extraPlugins = [
        #pkgs.vimPlugins.rose-pine
        pkgs.vimPlugins.nord-vim
    ];
}
