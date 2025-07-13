-- lua/indentation.lua
local M = {}

-- global default
M.default = {
  tabstop = 4,
  shiftwidth = 4,
  expandtab = true,
}

-- per-filetype overrides
M.by_ft = {
  javascript = { tabstop = 2, shiftwidth = 2, expandtab = true },
  typescript = { tabstop = 2, shiftwidth = 2, expandtab = true },
  typescriptreact = { tabstop = 2, shiftwidth = 2, expandtab = true },
  javascriptreact = { tabstop = 2, shiftwidth = 2, expandtab = true },
  json = { tabstop = 2, shiftwidth = 2, expandtab = true },
  yaml = { tabstop = 2, shiftwidth = 2, expandtab = true },
  html = { tabstop = 2, shiftwidth = 2, expandtab = true },
  css = { tabstop = 2, shiftwidth = 2, expandtab = true },
  scss = { tabstop = 2, shiftwidth = 2, expandtab = true },
  lua = { tabstop = 2, shiftwidth = 2, expandtab = true },

  python = { tabstop = 4, shiftwidth = 4, expandtab = true },
  rust = { tabstop = 4, shiftwidth = 4, expandtab = true },
  php = { tabstop = 4, shiftwidth = 4, expandtab = true },
  java = { tabstop = 4, shiftwidth = 4, expandtab = true },

  cpp = { tabstop = 2, shiftwidth = 2, expandtab = true },
  c = { tabstop = 2, shiftwidth = 2, expandtab = true },

  sh = { tabstop = 2, shiftwidth = 2, expandtab = true },
  bash = { tabstop = 2, shiftwidth = 2, expandtab = true },
  zsh = { tabstop = 2, shiftwidth = 2, expandtab = true },

  go = { tabstop = 8, shiftwidth = 8, expandtab = false },
}

-- fallback check: if filetype not in `by_ft`, use default
function M.setup()
  vim.opt.tabstop = M.default.tabstop
  vim.opt.shiftwidth = M.default.shiftwidth
  vim.opt.expandtab = M.default.expandtab

  for ft, opts in pairs(M.by_ft) do
    vim.api.nvim_create_autocmd('FileType', {
      pattern = ft,
      callback = function()
        vim.bo.tabstop = opts.tabstop
        vim.bo.shiftwidth = opts.shiftwidth
        vim.bo.expandtab = opts.expandtab
      end,
    })
  end

  -- catch-all fallback for unspecified filetypes
  vim.api.nvim_create_autocmd('FileType', {
    pattern = '*',
    callback = function()
      local ts = vim.bo.tabstop
      if ts ~= 2 and ts ~= 8 then
        vim.bo.tabstop = M.default.tabstop
        vim.bo.shiftwidth = M.default.shiftwidth
        vim.bo.expandtab = M.default.expandtab
      end
    end,
  })
end

return M
