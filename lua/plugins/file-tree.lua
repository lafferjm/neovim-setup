return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  ---@module 'neo-tree',
  ---@type neotree.Config?
  opts = {},
  config = function()
    require('neo-tree').setup {}

    vim.keymap.set('n', '<leader>ft', '<CMD>Neotree toggle<CR>', { desc = '[F]ile tree [T]oggle' })
  end,
}
