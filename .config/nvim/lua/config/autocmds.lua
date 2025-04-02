-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("CustomCursorLine", { clear = true }),
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "CursorLine", { underline = true, bg = nil }) -- Removes background, adds underline
  end,
})

-- vim.opt.termguicolors = true
--
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.guicursor = "n-v-c-sm:block-CursorInsert"
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.opt.guicursor = "n-v-c-sm:block-CursorNormal"
  end,
})
