{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        lua = ["stylua"];
        python = ["black"];
        javascript = ["prettierd"];
        typescript = ["prettierd"];
        typescriptreact = ["prettierd"];
        # to be used with the prettier php plugin -> requires setup in your php project
        php = ["prettierd"];
        nix = ["alejandra"];
      };
      default_format_opts = {
        lsp_format = "fallback";
      };
      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 500;
      };
    };
    luaConfig.post = ''
      require("conform").setup({
        format_on_save = function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = "fallback" }
        end,
      })

      vim.api.nvim_create_user_command("FormatDisable", function(args)
        if args.bang then
          -- FormatDisable! will disable formatting just for this buffer
          vim.b.disable_autoformat = true
        else
          vim.g.disable_autoformat = true
        end
      end, {
        desc = "Disable autoformat-on-save",
        bang = true,
      })
      vim.api.nvim_create_user_command("FormatEnable", function()
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
      end, {
        desc = "Re-enable autoformat-on-save",
      })
    '';
  };
}
