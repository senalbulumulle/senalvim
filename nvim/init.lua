-- Senal VIM --

-- Standard VIM Settings --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.tabstop = 8                                             -- 8 tabs and 8 spaces is the best --
vim.opt.shiftwidth = 8                                          -- 8 tabs and 8 spaces is the best --
vim.opt.expandtab = true
vim.opt.termguicolors = true

-- Key mappings --
vim.g.mapleader = ' '

-- Basic key mappings --
-- This is inspired from Senal's Piano Skills --
--

-- This allows the ability to delete a line
vim.keymap.set('n', 'lkj', 'dd', { noremap = true })
-- This allows the ability to save the file
vim.keymap.set('n', 'asd',':w', { noremap = true })
-- This allows the ability to save the file and quit
vim.keymap.set('n', 'zxc',':wq!', { noremap = true })


