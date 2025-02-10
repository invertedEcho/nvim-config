local utils = require('invertedEcho.utils')

local harpoon = require('harpoon')

harpoon:setup()

utils.setKey('n', '<C-a>', function()
  harpoon:list():add()
end)

utils.setKey('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
