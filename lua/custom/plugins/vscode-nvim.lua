-- To swap to Magento theme: set enabled = false here, set enabled = true in magento-theme.lua
return {
  'Mofiqul/vscode.nvim',
  enabled = true,
  config = function()
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
  end,
}
