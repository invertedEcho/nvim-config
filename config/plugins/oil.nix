{
  plugins.oil = {
    enable = true;
    settings = {
      keymaps = {
        "<C-h>" = false;
        "<C-l>" = false;
      };
      view_options = {
        show_hidden = true;
      };
    };
  };
  keymaps = [
    {
      action = "<cmd>Oil<CR>";
      key = "<leader>o";
      options = {
        silent = true;
      };
    }
  ];
}
