vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
-- vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>')
-- vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
vim.keymap.set('n', '<leader>p', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>r', ':NeoTreeReveal<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<F3>', ':noh<CR>')
vim.keymap.set('n', '<leader>tp', ':Telescope projects<CR>')

