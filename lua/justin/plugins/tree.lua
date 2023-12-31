return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local function my_on_attach(bufnr)
            local api = require('nvim-tree.api')

            api.config.mappings.default_on_attach(bufnr)

            vim.keymap.set("n", "<leader>fo", api.tree.open)
            vim.keymap.set("n", "<leader>ft", api.tree.toggle)

            vim.keymap.set("n", "<leader>oh", api.node.open.horizontal)
            vim.keymap.set("n", "<leader>ov", api.node.open.vertical)
        end

        require('nvim-tree').setup({
            on_attach = my_on_attach,
            filters = {
                dotfiles = false,
                git_ignored = false,
                custom = { '^.git$' },
            },
            git = {
                enable = true,
            }
        })
    end
}
