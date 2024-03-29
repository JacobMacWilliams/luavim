-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.softtabstop = 0

-- Line wrapping
vim.opt.textwidth = 92
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakat = " "

vim.opt.timeoutlen = 200

require('plugins')
