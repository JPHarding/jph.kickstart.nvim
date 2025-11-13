return {
  vim.keymap.set('n', '<leader>tt', function()
    local term_buf_name = 'Powershell'
    local existing_buf = nil
    local visible_win = nil

    -- Search all buffers for one named 'Woot Terminal'
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_get_name(buf):match(term_buf_name) then
        existing_buf = buf
        break
      end
    end

    -- Check if the terminal is currently visible in any window
    if existing_buf then
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_buf(win) == existing_buf then
          visible_win = win
          break
        end
      end
    end

    -- If the terminal is visible, close the window
    if visible_win then
      vim.api.nvim_win_close(visible_win, true)
      return
    end

    -- If the buffer exists but not visible, open it in split
    if existing_buf then
      vim.cmd 'split'
      vim.cmd 'resize 15'
      vim.api.nvim_win_set_buf(0, existing_buf)
      return
    end

    -- Otherwise, create a new terminal buffer
    vim.cmd 'split term://pwsh.exe'
    vim.cmd 'resize 15'
    vim.api.nvim_buf_set_name(0, term_buf_name)
    vim.api.nvim_set_option_value('buflisted', false, { scope = 'local' })
    vim.bo.filetype = 'terminal'
  end, { desc = 'Toggle Terminal' }),
}
