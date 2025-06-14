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
      # See :help oil.skip_confirm_for_simple_edits so see what qualifies as simple edits
      skip_confirm_for_simple_edits = true;
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
