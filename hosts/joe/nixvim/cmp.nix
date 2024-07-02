{
  programs.nixvim.plugins = {
    luasnip.enable = true;
    cmp-buffer = { enable = true; };
    cmp-emoji = { enable = true; };
    cmp-nvim-lsp = { enable = true; };
    cmp-path = { enable = true; };
    cmp_luasnip = { enable = true; };
    cmp = {
      enable = true;
      settings = {
        snippet.expand =
          "function(args) require('luasnip').lsp_expand(args.body) end";
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "buffer"; }
          { name = "nvim_lua"; }
          { name = "path"; }
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-bs>" = "cmp.mapping.abort()";
          "<up>" = "cmp.mapping.select_prev_item()";
          "<down>" = "cmp.mapping.select_next_item()";
          "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
        };
      };
    };
  };
}
