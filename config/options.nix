{
  opts = {
    number = true;
    relativenumber = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 5;

    shiftwidth = 2;

    # Hide command line unless needed
    cmdheight = 0;
  };
  globals.mapleader = " ";

  clipboard = {
    providers = {
      wl-copy.enable = true;
      xsel.enable = true;
    };
    register = "unnamedplus";
  };
}
