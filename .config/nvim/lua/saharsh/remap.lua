local options = { noremap = true }

vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>ev", vim.cmd.Ex)
vim.keymap.set("i", "kj", "<Esc>", options)

vim.keymap.set("x", "<S-p>", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--NvimTree
vim.keymap.set('n', '<leader>z', "<cmd> NvimTreeToggle <CR>")
