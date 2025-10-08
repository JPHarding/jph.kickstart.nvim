return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup(nil, {
      css = true, -- enable all css-style color functions
    })
  end,
}
