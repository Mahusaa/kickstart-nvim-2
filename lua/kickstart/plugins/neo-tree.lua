-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
        width = 30,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        window = {
          position = 'right',
          width = 30,
          mappings = {
            ['\\'] = 'close_window',
          },
        },
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
          follow_current_file = {
            enabled = true,
          },
        },
      },
    }

    -- Set Neo-tree highlights to be semi-transparent
    vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
    -- vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { bg = '#3c3836' })
  end,
}
