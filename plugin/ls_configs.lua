local lspconfig = require('lspconfig')
local cmp = require('cmp')
local default_client = require('lsclient-default')
local mason = require('mason')
local masonlspconfig = require('mason-lspconfig')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})

mason.setup()
masonlspconfig.setup({
  ensure_installed = {'lua_ls', 'pyright'},
  automatic_enable = false
})

lspconfig.pyright.setup({
	capabilities = default_client.capabilities,
	on_attach = default_client.on_attach
})

-- This is handled by lazydev plugin
--lspconfig.lua_ls.setup({
--	capabilities = default_client.capabilities,
--	on_attach = default_client.onattach,
--	settings = {
--		Lua = {
--			runtime = "LuaJIT",
--			diagnostics = {
--				globals = {"vim"},
--			},
--		}
--	},
--})
