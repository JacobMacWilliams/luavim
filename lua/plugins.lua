vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

        -- Packer: plugin manager
        use 'wbthomason/packer.nvim'
        -- TreeSitter: Semantic tree creation of buffer contents and syntax
        -- highlightin   
        use {
          'nvim-treesitter/nvim-treesitter',
          run = function()
               local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
               ts_update()
             end,
        }
        --LSP-ZERO: Out of the box configuration of lsp with cmp and other
        -- components.
        use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v2.x',
          requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
              'williamboman/mason.nvim',
              run = function()
                pcall(vim.cmd, 'MasonUpdate')
              end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
       }
       --Vim-Fugitive: Git integration.
       use 'tpope/vim-fugitive'
        -- Telescope: Fuzzy finder for various lists 
       use {
         'nvim-telescope/telescope.nvim', tag = '0.1.1',
         requires = { {'nvim-lua/plenary.nvim'} }
       }
       use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
       -- Lualine: Status line tool (curren line, mode, file, etc.)
       use {
          'nvim-lualine/lualine.nvim',
           requires = { 'nvim-tree/nvim-web-devicons', opt = true }
       }
       -- GitSigns: Annotations for git and a few actions.
       use {
         'lewis6991/gitsigns.nvim',
         tag = 'release', -- To use the latest release
         config = function()
                 require('gitsigns').setup()
         end
       }
       -- Hop: Intra-File navigation tool.
       use {
          'phaazon/hop.nvim',
          branch = 'v2', -- optional but strongly recommended
        }
       -- Tokyonight: NeoVim Theme.
       use 'folke/tokyonight.nvim'
end)
