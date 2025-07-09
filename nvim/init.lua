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
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>pr', ':Explore<CR>')
