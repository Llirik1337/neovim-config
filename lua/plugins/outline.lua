-- Example mapping to toggle outline
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", {desc = "Toggle Outline"})

require("outline").setup {}
