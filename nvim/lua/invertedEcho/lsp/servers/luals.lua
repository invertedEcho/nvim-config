local lspconfig = require('lspconfig')

-- properly setup lsp servers/mason in nixos
local handle = io.popen('which lua-language-server')

if handle == nil then
  return
end

local lua_language_server_path = handle:read('*a')
local trimmed_lua_language_server_path =
  lua_language_server_path:gsub('[\n\r]', '')

handle:close()

lspconfig.lua_ls.setup({
  cmd = { trimmed_lua_language_server_path },
})
