{
  plugins.lspconfig.enable = true;
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
    };
  };
}
