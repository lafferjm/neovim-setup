return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('flutter-tools').setup {}

    vim.keymap.set('n', '<leader>fe', '<cmd>FlutterEmulators<CR>', { desc = '[F]lutter [E]mulators' })
    vim.keymap.set('n', '<leader>fr', '<cmd>FlutterRun<CR>', { desc = '[F]lutter [R]un' })
    vim.keymap.set('n', '<leader>fq', '<cmd>FlutterQuit<CR>', { desc = '[F]lutter [Q]uit' })
    vim.keymap.set('n', '<leader>fR', '<cmd>FlutterRestart<CR>', { desc = '[F]lutter [R]estart' })
    vim.keymap.set('n', '<leader>fl', '<cmd>FlutterReload<CR>', { desc = '[F]lutter Re[l]oad' })
    vim.keymap.set('n', '<leader>fd', '<cmd>FlutterDevices<CR>', { desc = '[F]lutter [D]evices' })
    vim.keymap.set('n', '<leader>fx', '<cmd>FlutterDetach<CR>', { desc = '[F]lutter Detach (e[x]it background)' })
    vim.keymap.set('n', '<leader>fg', '<cmd>FlutterLogToggle<CR>', { desc = '[F]lutter Lo[g]' })
    vim.keymap.set('n', '<leader>fv', '<cmd>FlutterDevTools<CR>', { desc = '[F]lutter De[v]Tools' })
  end
}
