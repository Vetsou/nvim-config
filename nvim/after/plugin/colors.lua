require('catppuccin').setup({
    flavour = 'mocha',
    term_colors = true,
    transparent_background = false,
    show_end_of_buffer = true,
    styles = {},
    color_overrides = {
        mocha = {
            base = '#161A1E',
            mantle = '#161A1E',
            crust = '#161A1E',
            peach = '#C678DD',
            flamingo = '#C74336',
            green = '#6ED166',
            mauve = '#E4AA24',
            overlay0 = '#717176'
        }
    }
})

-- Set colorscheme
vim.cmd('colorscheme catppuccin')
