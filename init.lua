-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.softtabstop = 0

-- Line wrapping
--vim.opt.textwidth = 92
--vim.opt.wrap = true
--vim.opt.linebreak = true
vim.opt.breakat = " "

vim.opt.timeoutlen = 300

-- lazy.nvim/plugin setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Diagnostics
vim.diagnostic.config({
	virtual_lines = true
})

require("lazy").setup(require("lazyplugins"))
