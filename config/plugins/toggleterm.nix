{
  plugins.toggleterm = {
    enable = true;
  };
  # TODO: I want to be able to have lazygit float terminal open and then also be able to spawn the "normal terminal"
  keymaps = [
    {
      key = "<C-\\>";
      action = "<cmd>ToggleTerm<cr>";
    }
    {
      key = "<leader>g";
      action = "<cmd>TermExec cmd=\"lazygit\" direction=float<cr>";
    }
    {
      key = "<C-\\>";
      action = "<C-\\><C-n>";
      mode = "t";
    }
  ];
}
