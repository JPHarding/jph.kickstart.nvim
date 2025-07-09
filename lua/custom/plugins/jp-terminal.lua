return {
  -- open and add terminal to harpoon buffer.
  vim.keymap.set('n', '<leader>tt', function()
    vim.cmd 'split term://pwsh.exe'
    vim.cmd 'resize 15'
    vim.api.nvim_buf_set_name(0, 'New Terminal')
  end, { desc = 'New terminal' }),
}
