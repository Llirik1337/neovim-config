local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-- Sntup language servers.
local lspconfig = require('lspconfig')
local lspconfig_configs = require'lspconfig.configs'
local lspconfig_util = require 'lspconfig.util'

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.prismals.setup {}
lspconfig.cssls.setup {
    capabilities = capabilities
}
lspconfig.golangci_lint_ls.setup {}
lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {
            diagnostics = {
                enable = true,
                experimental = {
                    enable = true,
                },
            },
    },
  },
}
lspconfig.volar.setup {}
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>lD', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>ld', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = {buffer = ev.buf}
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- vim.keymap
        --     .set('n', '<Leader>sa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<Leader>sr', vim.lsp.buf.remove_workspace_folder,
        --                opts)
        -- vim.keymap.set('n', '<Leader>sl', function()
        --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        -- vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, opts)
        vim.keymap.set({'n', 'v'}, '<Leader>la', vim.lsp.buf.code_action, opts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<Leader>lf',
                       function() vim.lsp.buf.format {async = true} end, opts)
    end
})


--Vue

--local function on_new_config(new_config, new_root_dir)
--  local function get_typescript_server_path(root_dir)
--    local project_root = lspconfig_util.find_node_modules_ancestor(root_dir)
--    return project_root and (lspconfig_util.path.join(project_root, 'node_modules', 'typescript', 'lib', 'tsserverlibrary.js'))
--      or ''
--  end
--
--  if
--    new_config.init_options
--    and new_config.init_options.typescript
--    and new_config.init_options.typescript.tsdk == ''
--  then
--    new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
--  end
--end

