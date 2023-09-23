return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'WhoIsSethDaniel/lualine-lsp-progress.nvim'
    },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'onedark',
            },
            sections = {
                lualine_c = {
                    'filename',
                    'lsp_progress'
                }
            }
        })
    end
}
