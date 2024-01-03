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

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer', keyword_length = 3 },
    },
    formatting = lsp.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        ['<C-o>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-l>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-i>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})