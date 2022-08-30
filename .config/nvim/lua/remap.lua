local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", opts)

local on_attach = function(client, bufnr)
    -- Enable completoin triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    -- See `help.vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end



-- Navigation
vim.api.nvim_set_keymap('n', '<leader>nf', '<cmd>NERDTreeToggle<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ns', '<cmd>TagbarToggle<cr>', opts)
-- Undotree
vim.api.nvim_set_keymap('n', '<leader>nu', '<cmd>UndotreeToggle<cr>', opts)
-- Terminal
vim.api.nvim_set_keymap('n', '<leader>nt', '<cmd>10sp term://zsh<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ntv', '<cmd>80vs term://zsh<cr>', opts)
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', opts)
-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pd', ':Telescope grep_string<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ps', ':Telescope lsp_dynamic_workspace_symbols<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pg', ':Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pf', ':Telescope find_files<cr>', opts)
