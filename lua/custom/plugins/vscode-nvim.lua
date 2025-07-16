return {
  'Mofiqul/vscode.nvim',
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
