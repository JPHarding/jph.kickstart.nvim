return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      -- set up terminal buffer hiding.
      options = {
        custom_filter = function(bufnr)
          return vim.bo[bufnr].filetype ~= 'terminal' and vim.api.nvim_get_option_value('buflisted', { buf = bufnr })
        end,
      },
    }
    vim.keymap.set('n', '<leader>.', '<cmd>BufferLineMoveNext<CR>', { desc = 'Move buffer right' })
    vim.keymap.set('n', '<leader>,', '<cmd>BufferLineMovePrev<CR>', { desc = 'Move buffer left' })
    vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previous buffer (BufferLine order)' })
    vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer (BufferLine order)' })
  end,
}
