{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        nixd.enable = true;
        html.enable = true;
        tsserver.enable = true;
        volar.enable = true;
        pylsp.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    conform-nvim.enable = true;
  };
}
