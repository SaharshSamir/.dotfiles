vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        seperator_style = "slant",
        mode = "tabs",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = "nvim_lsp",
        background = {
          fg = 9,
          bg = 20
        },
        fill = {
          fg = 11,
          bg = 10
        }
    }
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
