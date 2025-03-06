return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'palenight',
      },
      sections = {
        -- lualine_a = {
        --   {
        --     'mode',
        --     fmt = function(str)
        --       return str:sub(1, 1)
        --     end,
        --   },
        -- },
        lualine_z = {
          {
            'datetime',
            style = '%A | %H:%M',
          },
        },
      },
    }
  end,
}
