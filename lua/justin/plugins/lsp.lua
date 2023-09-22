return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                'hrsh7th/cmp-nvim-lsp'
            }
        },
        {
            'hrsh7th/nvim-cmp',
            dependencies = {
                'L3MON4D3/LuaSnip'
            }
        }
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "html",
                "cssls"
            },
            handlers = {
                lsp_zero.default_setup
            }
        })

        local cmp = require('cmp')
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-y>'] = cmp.mapping.confirm({select = true}),
                ['<C-Space>'] = cmp.mapping.complete()
            })
        })
    end
}

