vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gR", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "ga", vim.lsp.buf.code_action)
vim.keymap.set("n", "ge", vim.diagnostic.open_float)

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
    },
    virtual_text = {
        prefix = "●",
    },
    underline = true,
})

vim.lsp.config("luals", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc" },
})
vim.lsp.enable("luals")

-- NOTE: already enabled by rustaceanvim plugin
-- vim.lsp.enable("rust_analyzer")

vim.lsp.enable("pyright")

-- No need to enable, roslyn.nvim automatically does it for us
-- vim.lsp.enable("roslyn")

vim.lsp.config("roslyn", {
    cmd = {
        -- "dotnet",
        -- "<target>/Microsoft.CodeAnalysis.LanguageServer.dll",
        vim.fn.exepath("Microsoft.CodeAnalysis.LanguageServer"),
        "--logLevel=Information",
        "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.log.get_filename()),
        "--stdio",
    },
})

vim.lsp.enable("cmake")
vim.lsp.enable("clangd")
vim.lsp.enable("glsl_analyzer")

vim.lsp.enable("tombi")
vim.lsp.enable("jsonls")

vim.lsp.enable("nixd")

vim.lsp.enable("java_language_server")
vim.lsp.config("java_language_server", {
    cmd = { "java-language-server" },
})

vim.lsp.enable("gopls")
