local lsp = require('lsp-zero').preset({
	sign_icons = {
        error = '',
        warn = '',
        hint = '',
        info = ''
    }
})

lsp.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = ''
})
lsp.ensure_installed({
	-- Replace these with whatever servers you want to install
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),

})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})


-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("i", "<C-[>", function() vim.lsp.buf.signature_help() end, opts)
  --vim.keymap.set("n", "<leader>ff", function() vim.lsp.buf.format() end, opts) --> removed because now using prettier
end)

vim.diagnostic.config({
	virtual_text = {
		prefix = "●"
	},
	float = {
		source = "always"
	}
})
vim.api.nvim_set_keymap('n', '<Space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

lsp.setup()
