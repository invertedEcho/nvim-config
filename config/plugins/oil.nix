{
  plugins.oil = {
    enable = true;
    settings = {
      keymaps = {
        "<C-h>" = false;
        "<C-l>" = false;
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
