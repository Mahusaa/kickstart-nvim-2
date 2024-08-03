return {
  'stevearc/oil.nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      viewoptions = {
        show_hidden = true,
      },
    }
    -- Open parent directory
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    -- Open parent directory in floating window
    vim.keymap.set('n', '<space>-', require('oil').toggle_float, { desc = 'Open Float parent directory' })
  end,
}
