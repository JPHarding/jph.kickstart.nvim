-- To swap to Magento theme: set enabled = false here, set enabled = true in magento-theme.lua
local enabled = true
if not enabled then return end

vim.pack.add { 'https://github.com/Mofiqul/vscode.nvim' }

require('vscode').setup {
  italic_comments = false,
  underline_links = true,
  terminal_colors = true,

  group_overrides = {
    NormalFloat = { bg = '#393939' },
    FloatBorder = { bg = '#393939' },
  },
}

vim.cmd.colorscheme 'vscode'
