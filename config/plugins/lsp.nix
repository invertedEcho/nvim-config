{
  diagnostic.settings = {
    virtual_text = true;
  };
  plugins.lsp = {
    enable = true;
    servers = {
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      lua_ls.enable = true;
      nixd.enable = true;
      csharp_ls.enable = true;
    };
    keymaps = {
      silent = true;
      lspBuf = {
        gd = "definition";
        gR = "references";
        "<leader>rn" = "rename";
        ga = "code_action";
      };
      diagnostic = {
        ge = "open_float";
      };
    };
  };
}
