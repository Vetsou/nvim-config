-- Set local vars
local g = vim.g
local opt = vim.opt
local kmap = vim.keymap.set

-- Remap leader
g.mapleader = " "
g.maplocalleader = " "

-- Keymaps
kmap("n", "<leader>pv", vim.cmd.Ex)
