return {
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {},
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig',
      { 'j-hui/fidget.nvim',    opts = {} },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "eslint",
          "jsonls",
          "html",
          "cssls"
        },
        automatic_enable = true,
      })
    end,
  },
  {
    'saghen/blink.cmp',
    version = '*',
    opts = {
      keymap = { preset = 'super-tab' },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },
      signature = { enabled = true },
      sources = {
        default = { 'lsp', 'path', 'buffer' },
      },
    },
    opts_extend = { 'sources.default' },
  },
}
