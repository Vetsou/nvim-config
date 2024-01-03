-- Set local vars
local g = vim.g
local opt = vim.opt
local kmap = vim.keymap.set

-- Remap leader
g.mapleader = " "
g.maplocalleader = " "

-- General
kmap("n", "<leader>pv", vim.cmd.Ex)
kmap("n", "Q", "<nop>")
kmap("n", "J", "mzJ`z")

-- Move hl text
kmap("v", "J", ":m '>+1<CR>gv=gv")
kmap("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor in the middle for search
kmap("n", "<C-d>", "<C-d>zz")
kmap("n", "<C-u>", "<C-u>zz")
kmap("n", "n", "nzzzv")
kmap("n", "N", "Nzzzv")

-- Keep the copied text when pasting over
kmap("x", "<leader>p", [["_dP]])

-- Lsp format
kmap("n", "<leader>f", vim.lsp.buf.format)

-- Quick source
kmap("n", "<leader><leader>", "<cmd>so<CR>")