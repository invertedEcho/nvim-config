local notify = require('notify')
vim.notify = notify
notify.setup({
  fps = 144,
  stages = 'slide',
  top_down = false,
})

local banned_messages = { 'No information available' }

vim.notify = function(msg, ...)
  for _, banned in ipairs(banned_messages) do
    if msg == banned then
      return
    end
  end
  notify(msg, ...)
end
