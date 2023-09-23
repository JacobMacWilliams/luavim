-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 0

-- Line wrapping
vim.opt.textwidth = 92
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakat = " "

vim.opt.timeoutlen = 200

require('plugins')

--[[
require('lspconfig').setup {

  on_new_config = function(new_config, _)
    local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
    if require'lspconfig'.util.path.is_file(julia) then 
      vim.notify("Hello!")
      new_config.cmd[1] = julia
    end
  end
}
--]]
