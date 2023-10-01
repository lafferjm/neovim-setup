return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-dap.nvim' },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

        telescope.load_extension("dap")
        vim.keymap.set('n', '<leader>pd', telescope.extensions.dap.commands)
    end
}
