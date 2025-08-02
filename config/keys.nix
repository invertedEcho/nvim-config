{
  keymaps = [
    # Move cursor in insert mode
    {
      action = "<left>";
      key = "<C-h>";
      mode = "i";
    }
    {
      action = "<right>";
      key = "<C-l>";
      mode = "i";
    }
    {
      action = "<up>";
      key = "<C-k>";
      mode = "i";
    }
    {
      action = "<down>";
      key = "<C-j>";
      mode = "i";
    }
    # Make navigation between buffers easier
    {
      action = "<C-w>h";
      key = "<C-h>";
      mode = "n";
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
    }
    # Make resizing buffers easier
    # note, M = alt. see :help key-notation
    {
      action = "<C-w>2-";
      key = "<M-k>";
      mode = "n";
    }
    {
      action = "<C-w>2+";
      key = "<M-j>";
      mode = "n";
    }
    {
      action = "<C-w>5<";
      key = "<M-h>";
      mode = "n";
    }
    {
      action = "<C-W>5>";
      key = "<M-l>";
      mode = "n";
    }
    {
      action = ":noh<cr>";
      key = "<esc>";
      mode = "n";
    }
  ];
}
