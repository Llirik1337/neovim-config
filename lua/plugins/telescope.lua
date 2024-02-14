local builtin = require('telescope.builtin')
local trouble = require("trouble.providers.telescope")
local telescope = require("telescope")
local lazygit_utils = require("lazygit.utils")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})

require('telescope').setup { 
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
  }
}

require('telescope').load_extension('projects')
require("telescope").load_extension("lazygit")

vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = "*",
    callback = function() lazygit_utils.project_root_dir() end,
})

vim.keymap.set('n',"<leader>lg", telescope.extensions.lazygit.lazygit , {})
