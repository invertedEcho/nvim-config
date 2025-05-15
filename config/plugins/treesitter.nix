{
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight.enable = true;
      ensure_installed = [
        "lua"
        "tsx"
        "javascript"
        "typescript"
        "css"
        "json"
        "toml"
        "rust"
        "comment"
        "php"
        "dart"
        "yaml"
        "python"
      ];
    };
  };
}
