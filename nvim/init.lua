vim.opt.number = true
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

vim.g.mapleader = ' '

vim.keymap.set('n', 'lkj', 'dd', { noremap = true })
vim.keymap.set('n', 'asd',':w', { noremap = true })
vim.keymap.set('n', 'zxc',':wq!', { noremap = true })



-- SenalVim Shortcut Hardware based on (F25/F100) --
local function has_key(key)
	local ok = pcall(vim.keymap.set, 'n', key, '', { noremap = true })
	if ok then
		vim.keymap.del('n', key)
	end
	return ok
end

if has_key('<F25>') and has_key('<F100>') then
	vim.keymap.set('n', '<F25>', ':w<CR>', { noremap = true, desc = 'SenalVim: save' })
	vim.keymap.set('n', '<F100>', 'dd', { noremap = true, desc = 'SenalVim: delete line' })
else
	print("it's better with the senalvim shortcut keykit")
end

vim.opt.shortmess:append('I')
