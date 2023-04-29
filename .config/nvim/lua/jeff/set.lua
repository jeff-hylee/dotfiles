vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.swapfile= false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME").."/.vim/undodir"
vim.opt.incsearch = true
-- vim.opt.termguicolors = true
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.list = true
vim.opt.lcs:append("space:·")
vim.opt.mouse = "a"

-- Give more space for displaying messages
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.cmd('colorscheme jellybeans')

