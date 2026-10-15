-- WizzBox colorscheme (local, no external plugin - lives in colors/wizzbox.lua)
-- To activate: set enabled = true here, set enabled = false in vscode-nvim.lua
-- To revert:   flip the flags back
local enabled = false
if not enabled then return end

vim.cmd.colorscheme 'wizzbox'
