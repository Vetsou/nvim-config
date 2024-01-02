require('catppuccin').setup({
    flavour = 'mocha',
    term_colors = true,
    transparent_background = false,
    show_end_of_buffer = true,
    styles = {},
    color_overrides = {
        mocha = {
            base = '#13131f',
            mantle = '#181841',
            crust = '#1E1E2E',
            overlay0 = '#6D6E6E'
        }
    }
})

-- Set colorscheme
vim.cmd('colorscheme catppuccin')
