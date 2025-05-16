{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "buffer";}
        {name = "path";}
        {name = "luasnip";}
      ];
      mapping = {
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-space>" = "cmp.mapping.complete()";
        "<C-i>" = "cmp.mapping.confirm({ select = true })";
      };
      completion.completeopt = "menu,menuone,preview,noselect";
    };
  };
}
