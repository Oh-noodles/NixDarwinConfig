{
  programs.nixvim.plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader><space>" = "find_files";
      # "<leader>," = {
      #   action = "<CMD>Telescope buffers sort_mru=true sort_lastused=true<CR>";
      # };
      "<leader>fg" = "live_grep";
    };
    extensions.fzf-native.enable = true;
  };
}
