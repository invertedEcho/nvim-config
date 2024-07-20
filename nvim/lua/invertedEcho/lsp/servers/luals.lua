local lspconfig = require('lspconfig')

-- TODO: nixos ld issues
local handle = io.popen('which lua-language-server')

if handle == nil then
  return
end

local lua_language_server_path = handle:read('*a')
local trimmed_lua_language_server_path =
  lua_language_server_path:gsub('[\n\r]', '')
handle:close()

lspconfig.lua_ls.setup({
  -- FIXME: nixos
  cmd = { trimmed_lua_language_server_path },
})
