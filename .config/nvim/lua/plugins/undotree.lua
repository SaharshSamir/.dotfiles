return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  lazy = false,
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_SplitWidth = 35
    vim.g.undotree_WindowLayout = 4
  end,
}
