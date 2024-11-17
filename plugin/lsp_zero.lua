local cmp = require('cmp')

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

local lsp_zero = require('lsp-zero')

--local lsp_attach = function(client, bufnr)
--  -- see :help lsp-zero-keybindings
--  -- to learn the available actions
--  lsp_zero.default_keymaps({buffer = bufnr})
--end

lsp_zero.extend_lspconfig({
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  lsp_attach = lsp_attach,
  float_border = 'rounded',
  sign_text = true,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = event.buf})
  end
})

require('mason').setup()

require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'julials', 'pyright'},
--  handlers = {
--    lsp_zero.default_setup,
--    ['julials'] = function()
--      
--      local lspconfig = require("lspconfig")
--      lspconfig.julials.setup {
--        --julia_env_path = {"~/.julia/environments/nvim-lspconfig"}
--        symbol_cache_download = true
--      }
--    end,
--  }
})
require('lspconfig').pyright.setup({})
