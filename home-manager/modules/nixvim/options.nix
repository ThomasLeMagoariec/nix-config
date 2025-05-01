{ theme, ...}:

{
    programs.nixvim = {
        config = {
            globals.mapleader = " ";
        
            colorscheme = theme;
        
            opts = {
                number = true;

               tabstop = 4;
                softtabstop = 4;
                shiftwidth = 4;
                expandtab = true;
                smartindent = true;
    
            };
        };
    };
}
