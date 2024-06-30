{
  programs.nixvim.keymaps = [
    {
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
    }
    {
      key = "<leader>cf";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
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
    }
    {
      key = "<C-Right>";
      mode = [ "n" ];
      action = "<cmd>vertical resize +2<cr>";
    }
    {
      key = "<leader>sr";
      action = "<cmd>lua require('spectre').toggle()cr>";
    }
    {
      key = "<leader>cd";
      mode = [ "n" ];
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
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
  ];
}
