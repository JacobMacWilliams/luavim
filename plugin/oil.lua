require("oil").setup()

vim.keymap.set("n", "<leader>ft", "<CMD>Oil<CR>", { desc = "Open parent directory of current file in buffer."}) 
