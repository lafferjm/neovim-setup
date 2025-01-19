return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.ai').setup { n_lines = 500 }

    require('mini.pairs').setup()

    require('mini.surround').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = true }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
