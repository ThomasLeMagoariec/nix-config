{ config, pkgs, ... }:

{
  home.username = "thomas";
  home.homeDirectory = "/home/thomas";

  home.packages = [
    pkgs.hello
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.file = {};

  home.stateVersion = "24.11"; # Please read the comment before changing.
  programs.home-manager.enable = true;


  programs.neovim =
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in {
    enable = true;

    extraPackages = with pkgs; [
        xclip
        wl-clipboard
        luajitPackages.lua-lsp
        rnix-lsp
    ]

    viAliases = true;
    vimAliases = true;
    vimdiffAliases = true;

    plugins = with pkgs.vimPlugins; [
        {
            plugin = neo-tree-nvim
            config = toLuaFile ~/.config/nvim/plugins/neo-tree.lua
        }

        nvim-lspconfig

        nvim-cmp
        nvim-cmp;

        telescope-nvim;

        cmp_luasnip
        cmp-nvim-lsp

        luasnip

        lualine-nvim
        nvim-web-devicons

        (nvim.treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-python
          p.tree-sitter-json
        ]));

        vim-nix
    ];

    extraLuaConfig = ''
        ${builtins.readFile ./nvim/options.lua}

    '';
  };
}
