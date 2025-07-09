return {
  'Mofiqul/vscode.nvim',
  config = function()
    require('vscode').setup {
      italic_comments = false,
      underline_links = true,
      terminal_colors = true,
    }

    vim.cmd.colorscheme 'vscode'
  end,
}
