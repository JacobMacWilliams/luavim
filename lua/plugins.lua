vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomson/packer.nvim'

        -- Add plugins here
end)

