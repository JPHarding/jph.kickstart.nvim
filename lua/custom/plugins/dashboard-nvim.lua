return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local logo = [[
        ██╗██████╗ ██╗  ██╗    ██╗  ██╗██╗ ██████╗██╗  ██╗███████╗████████╗ █████╗ ██████╗ ████████╗
        ██║██╔══██╗██║  ██║    ██║ ██╔╝██║██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝
     ██║██████╔╝███████║    █████╔╝ ██║██║     █████╔╝ ███████╗   ██║   ███████║██████╔╝   ██║
██   ██║██╔═══╝ ██╔══██║    ██╔═██╗ ██║██║     ██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗   ██║
╚█████╔╝██║     ██║  ██║    ██║  ██╗██║╚██████╗██║  ██╗███████║   ██║   ██║  ██║██║  ██║   ██║
 ╚════╝ ╚═╝     ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝
    ]]
    logo = string.rep('\n', 8) .. logo .. '\n\n'
    require('dashboard').setup {

      theme = 'doom',
      config = {
        header = vim.split(logo, '\n'),
        center = {
          { desc = ' Update Lazy', icon = '󰒲', action = 'Lazy update', key = 'u' },
          { desc = ' Lazy.Nvim', icon = '󰒲', action = 'Lazy', key = 'l' },
          { desc = ' Mason', icon = 'M', action = 'Mason', key = 'm' },
          {
            desc = 'Telescope Search Neovim Files',
            icon = ' ',
            action = 'lua require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })',
            key = 'n',
          },
          { desc = 'Telescope Find Files', icon = ' ', action = 'Telescope find_files', key = 'f' },
          { desc = 'Telescope Help Tags', icon = ' ', action = 'Telescope help_tags', key = 'h' },
          { desc = 'Search Select Telesocpe', icon = ' ', action = 'Telescope builtin', key = 'b' },
          { desc = 'Telescope Search Grep', icon = ' ', action = 'Telescope live_grep', key = 'g' },
          { desc = 'Telescope Resume', icon = ' ', action = 'Telescope resume', key = 'r' },
          { desc = 'Telescope Search Recent', icon = ' ', action = 'Telescope oldfiles', key = 'o' },
          { desc = 'Open Har[p]oon', icon = ' ', action = 'Telescope harpoon marks', key = 'p' },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
