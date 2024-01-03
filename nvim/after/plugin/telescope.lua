local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>fe', builtin.find_files, {})

-- Find git files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- Find by string
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})