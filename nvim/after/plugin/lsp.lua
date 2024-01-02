local lsp = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 
        'clangd', 
        'lua_ls',
        'rust_analyzer',
    },
    handlers = {
        lsp.default_setup,
    }
})