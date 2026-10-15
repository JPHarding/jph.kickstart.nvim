vim.pack.add { 'https://github.com/folke/persistence.nvim' }

-- Sessions are only saved when at least one file buffer is open (see `need` option)
require('persistence').setup {
  -- add any custom options here
}

-- load the session for the current directory
vim.keymap.set('n', '<leader>qs', function() require('persistence').load() end, { desc = 'Load dir session' })

-- select a session to load
vim.keymap.set('n', '<leader>qS', function() require('persistence').select() end, { desc = 'Select session' })

-- load the last session
vim.keymap.set('n', '<leader>ql', function() require('persistence').load { last = true } end, { desc = 'Load last session' })

-- stop Persistence => session won't be saved on exit
vim.keymap.set('n', '<leader>qd', function() require('persistence').stop() end, { desc = "Stop session (don't save on exit)" })
