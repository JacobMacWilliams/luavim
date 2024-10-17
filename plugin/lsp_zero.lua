local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})

require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'julials', 'pyright'},
  handlers = {
    lsp_zero.default_setup,
    ['julials'] = function()
      
      local lspconfig = require("lspconfig")
      lspconfig.julials.setup {
        --julia_env_path = {"~/.julia/environments/nvim-lspconfig"}
        symbol_cache_download = true
      }
    end,
  }
})
