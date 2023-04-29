local opts = { noremap = true, silent = true }

vim.g['NERDTreeDirArrowExpandable'] = '+'
vim.g['NERDTreeDirArrowCollapsible'] = '~'
vim.g['NERDTreeShowLineNumbers'] = 1
vim.api.nvim_command(' autocmd FileType nerdtree setlocal relativenumber')

vim.api.nvim_set_keymap('n', '<leader>nf', '<cmd>NERDTreeToggle<cr>', opts)

