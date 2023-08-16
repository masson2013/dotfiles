-- local colorscheme = "ayu-mirage"
local colorscheme = "ayu"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- Change the Background color to #1C1C1C in the lua/ayu/colors.lua

-- require('ayu').setup({
--   overrides = {
--     IncSearch = {fg = '#FFFFFF'}
--   }
-- })
