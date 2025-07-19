local M = {}

M.capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.set_log_level "warn" -- change to "debug" for more info

M.on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end
		vim.keymap.set("n", keys, func, {buffer = bufnr, desc  = desc})
	end
	vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
	nmap("[d", vim.diagnostic.goto_prev, "Go to previous diagnostic message")
	nmap("]d", vim.diagnostic.goto_next, "Go to next diagnostic message")
	nmap("gd", vim.lsp.buf.definition, "Go to definition")
	nmap("gD", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", "Go to definition in vertical split")
	nmap("K", vim.lsp.buf.hover, "Hover Documentation")
	nmap("<leader>ic", vim.lsp.buf.incoming_calls, "Incoming calls")
	nmap("<leader>oc", vim.lsp.buf.outgoing_calls, "Outgoing calls")
	nmap("<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
end

return M
