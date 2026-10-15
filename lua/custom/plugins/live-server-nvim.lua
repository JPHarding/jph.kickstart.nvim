-- live-server.nvim v0.2+ is pure Lua (no npm `live-server` needed, no `setup()` call).
-- Optional config, must be set before the plugin loads. See `:help live-server-config`
-- vim.g.live_server = {
--   port = 5500,
--   browser = true,
-- }

vim.pack.add { 'https://github.com/barrett-ruth/live-server.nvim' }

vim.keymap.set('n', '<leader>tl', '<cmd>LiveServerToggle<CR>', { desc = '[T]oggle [l]ive server' })
