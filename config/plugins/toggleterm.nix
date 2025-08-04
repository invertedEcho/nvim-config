{
  plugins.toggleterm = {
    enable = true;
  };
  keymaps = [
    {
      key = "<C-\\>";
      action = "<cmd>ToggleTerm<cr>";
    }
    {
      key = "<C-\\>";
      action = "<C-\\><C-n>";
      mode = "t";
    }
  ];
}
