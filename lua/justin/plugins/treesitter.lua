return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "dart",
                "javascript",
                "typescript",
                "lua",
            },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = {
                enable = false,
                disable = {
                    'dart'
                }
            },
        })
    end
}
