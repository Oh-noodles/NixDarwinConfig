{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    indent = true;
  };
  programs.nixvim.plugins.treesitter-context = {
    enable = true;
  };
}
