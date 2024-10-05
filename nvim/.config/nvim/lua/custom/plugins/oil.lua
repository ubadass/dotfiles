return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  config = function()
    require('oil').setup {
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '<leader>\\', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
  end,
  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
}
