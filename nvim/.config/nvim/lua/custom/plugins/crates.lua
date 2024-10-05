return {
  'saecki/crates.nvim',
  tag = 'stable',
  event = { 'BufRead Cargo.toml' },
  config = function()
    require('crates').setup {
      completion = {
        crates = {
          enabled = true, -- disabled by default
          max_results = 8, -- The maximum number of search results to display
          min_chars = 3, -- The minimum number of charaters to type before completions begin appearing
        },
        cmp = {
          enabled = true,
        },
      },
    }

    local cmp = require 'cmp'

    vim.api.nvim_create_autocmd('BufRead', {
      group = vim.api.nvim_create_augroup('CmpSourceCargo', { clear = true }),
      pattern = 'Cargo.toml',
      callback = function()
        cmp.setup.buffer { sources = { { name = 'crates' } } }
      end,
    })
  end,
}
