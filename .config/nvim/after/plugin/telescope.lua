local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", opts)

vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pd', ':Telescope grep_string<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ps', ':Telescope lsp_dynamic_workspace_symbols<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pg', ':Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pf', ':Telescope find_files<cr>', opts)

