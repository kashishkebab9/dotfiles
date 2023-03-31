vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>w', ':set wrap!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Fern . -drawer -toggle<CR>', { noremap = true, silent = true })

