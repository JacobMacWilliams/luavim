return {
    -- Tokyonight: NeoVim Theme.
    {
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000
	},
    
	-- Gruvbox: NeoVim Theme
    { "ellisonleao/gruvbox.nvim" },

	{
    	'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
	},
	
	-- GitSigns: Annotations for git and a few actions.
    {
         'lewis6991/gitsigns.nvim',
		 config = function()
			 require('gitsigns').setup()
		 end,
         --tag = '0.6', -- To use the latest release
    },
	
	-- Lualine: Status line
	{
          'nvim-lualine/lualine.nvim',
           dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
	-- For commenting functionality
	-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
	{
	    'numToStr/Comment.nvim',
	    opts = {
	        -- add any options here
	    }
	},
    --Vim-Fugitive: Git integration.
    {'tpope/vim-fugitive'},
    
	--Harpoon: Quick buffer navigation.
    {
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		dependencies = {{"nvim-lua/plenary.nvim"}}
	},

	--In line navigation
    {
    	'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    },

	{
         'nvim-telescope/telescope.nvim',
		 lazy = false,
		 tag = '0.1.8',
         dependencies = { {'nvim-lua/plenary.nvim'} }
    },
	
	{
		'nvim-telescope/telescope-fzf-native.nvim', 
	 	build = 'make'
	},
	
	-- Latex integration
	{'lervag/vimtex'},

	--LSP-Config
	{'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
	{
		'williamboman/mason.nvim',
		build = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
	},
	{'williamboman/mason-lspconfig.nvim'},

	--Testing-Plugin
	{
	  "nvim-neotest/neotest",
	  dependencies = {
	    "nvim-neotest/nvim-nio",
		"nvim-neotest/neotest-python",
	    "nvim-lua/plenary.nvim",
	    "antoinemadec/FixCursorHold.nvim",
	    "nvim-treesitter/nvim-treesitter",
	  }
	},
	{
  		'stevearc/oil.nvim',
  		---@module 'oil'
  		---@type oil.SetupOpts
  		opts = {},
  		-- Optional dependencies
  		dependencies = { { "echasnovski/mini.icons", opts = {} } },
  		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  		lazy = false,
	},
}

