-- https://github.com/debugloop/telescope-undo.nvim
-- Telescope itself is installed and configured in init.lua
vim.pack.add { 'https://github.com/debugloop/telescope-undo.nvim' }

-- Calling telescope's setup again is fine, it merges the extension config.
require('telescope').setup {
  extensions = {
    undo = {
      -- telescope-undo.nvim config, see https://github.com/debugloop/telescope-undo.nvim
    },
  },
}
require('telescope').load_extension 'undo'

vim.keymap.set('n', '<leader>u', '<cmd>Telescope undo<cr>', { desc = 'undo history' })
