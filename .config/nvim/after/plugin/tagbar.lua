local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>ns', '<cmd>TagbarToggle<cr>', opts)

