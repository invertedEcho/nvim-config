local utils = {}

function utils.setKey(mode, key, command)
  vim.keymap.set(mode, key, command)
end

return utils
