return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'material',
      },
      extensions = { 'oil' },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)
            end,
          },
        },
        lualine_b = {
          'buffers',
          'diff',
          'diagnostics',
        },
        lualine_c = {
          'branch',
        },
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
