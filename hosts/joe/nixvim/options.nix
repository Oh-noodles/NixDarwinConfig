{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.opts = {
    number = true;
    relativenumber = true;

    autoindent = true;
    smartindent = true;
    breakindent = true;
    foldmethod = "indent";
    foldlevel = 99;

    expandtab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    cursorline = true;
    clipboard = "unnamed";
  };
}
