vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true

require('plugins')

require('configs.treesitter')
require('configs.telescope')
require('configs.lualine')
require('configs.hop')
