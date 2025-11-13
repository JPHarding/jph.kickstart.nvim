return {
  'barrett-ruth/live-server.nvim',
  build = 'npm install -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },

  keys = {
    {
      '<leader>tl',
      function()
        if vim.g.live_server_running then
          vim.cmd 'LiveServerStop'
          vim.g.live_server_running = false
        else
          vim.cmd 'LiveServerStart'
          vim.g.live_server_running = true
        end
      end,
      desc = '[T]oggle [l]ive server',
    },
  },

  config = function()
    -- same thing as config = true
    require('live-server').setup()
  end,
}
