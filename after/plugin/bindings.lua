vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':w<CR>', {noremap=true})
vim.keymap.set('n', '<leader>q', ':q<CR>', {noremap=true})
vim.keymap.set('n', '<leader>b', ':bn<CR>', {noremap=true})
vim.keymap.set('i', '<leader>i','<Esc>', {noremap=true})
vim.keymap.set('n', '<Esc>', ':noh<CR>', {noremap=true})
