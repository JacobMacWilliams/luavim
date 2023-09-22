vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':w<CR>', {noremap=true})
vim.keymap.set('n', '<leader>q', ':q<CR>', {noremap=true})
vim.keymap.set('n', '<leader>n', ':bn<CR>', {noremap=true})
vim.keymap.set('n', '<leader>p', ':bp<CR>', {noremap=true})
vim.keymap.set('i', 'uu','<Esc>', {noremap=true})
vim.keymap.set('n', '<Esc>', ':noh<CR>', {noremap=true})
