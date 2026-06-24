-- WizzBox colorscheme (local, no external plugin)
-- To activate: set enabled = true here, set enabled = false in vscode-nvim.lua
-- To revert:   flip the flags back
return {
  dir = vim.fn.stdpath 'config',
  name = 'wizzbox',
  priority = 1000,
  enabled = false,
  config = function()
    vim.cmd.colorscheme 'wizzbox'
  end,
}
