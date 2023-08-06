local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>na", mark.add_file)
vim.keymap.set("n", "<leader>nh", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>nj", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>nk", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>nl", function() ui.nav_file(3) end)
