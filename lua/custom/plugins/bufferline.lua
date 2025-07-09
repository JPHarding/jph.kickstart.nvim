return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {}
    vim.keymap.set('n', '<leader>.', '<cmd>BufferLineMoveNext<CR>', { desc = 'Move buffer right' })
    vim.keymap.set('n', '<leader>,', '<cmd>BufferLineMovePrev<CR>', { desc = 'Move buffer left' })
  end,
}
