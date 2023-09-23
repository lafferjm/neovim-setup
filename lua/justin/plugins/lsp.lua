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
        },
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            local opts = { buffer = bufnr, remap = false }
            lsp_zero.default_keymaps({ buffer = bufnr })

            vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
            vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)

            lsp_zero.buffer_autoformat()
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
                ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete()
            })
        })
    end
}
