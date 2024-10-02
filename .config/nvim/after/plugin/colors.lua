--vim.cmd[[colorscheme tokyonight]]
function ColorMyPencilsTransparent(color)
	color = color or "tokyonight"
	--vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", {bg = "none" })

    vim.cmd([[:hi SignColumn guibg=NONE]])
    vim.cmd([[:hi CursorLine gui=underline cterm=underline ctermfg=None guibg=None]])



end

function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
	--vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg = "none" })
	--vim.api.nvim_set_hl(0, "NvimTreeNormalNC", {bg = "none" })

    vim.cmd([[:hi SignColumn guibg=NONE]])
    vim.cmd([[:hi CursorLine gui=underline cterm=underline ctermfg=None guibg=None]])



end
ColorMyPencils("oxocarbon")

