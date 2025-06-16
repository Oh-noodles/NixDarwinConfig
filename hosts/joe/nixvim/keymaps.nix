{
  programs.nixvim.keymaps = [
    {
      key = "<leader>e";
      action = "<CMD>NvimTreeToggle<CR>";
    }
    {
      key = "<leader>cf";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "code format";
    }
    {
      key = "<leader>,";
      action = "<CMD>Telescope buffers sort_mru=true sort_lastused=true<CR>";
    }

    {
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
    }
    {
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
    }
    {
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
    }
    {
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
    }
    {
      key = "<C-Left>";
      mode = [ "n" ];
      action = "<cmd>vertical resize -2<cr>";
      options.desc = "vertical decrease";
    }
    {
      key = "<C-Right>";
      mode = [ "n" ];
      action = "<cmd>vertical resize +2<cr>";
      options.desc = "vertical increase";
    }
    {
      key = "<leader>sr";
      action = "<cmd>lua require('spectre').toggle()<cr>";
      options.desc = "spectre search replace";
    }
    {
      key = "<leader>cd";
      mode = [ "n" ];
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      options.desc = "float diagnostic";
    }
    {
      key = "<leader>ce";
      mode = [ "n" ];
      action = "<cmd>lua vim.diagnostic.setqflist()<cr>";
      options.desc = "open diagnostic";
    }
    {
      key = "<C-/>";
      mode = [ "n" "t" ];
      action = "<cmd>FloatermToggle<cr>";
    }
    # vim registers <C-/> as <C-_>, so we set it too
    {
      key = "<C-_>";
      mode = [ "n" "t" ];
      action = "<cmd>FloatermToggle<cr>";
    }
    {
      key = "<D-o>";
      mode = [ "i" ];
      action = "<cmd>lua require('luasnip').jump(1)<cr>";
      options.desc = "jump next param";
    }
    {
      key = "<D-u>";
      mode = [ "i" ];
      action = "<cmd>lua require('luasnip').jump(-1)<cr>";
      options.desc = "jump prev param";
    }
  ];

  programs.nixvim.autoCmd = [
    {
      event = [ "FileType" ];
      command = "lua require('telescope').setup({
        defaults = {
          mappings = {
            n = {
              ['dd'] = require('telescope.actions').delete_buffer,
            }
          }
        }
      })";
    }
  ];
}
