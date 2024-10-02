-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'folke/tokyonight.nvim'
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required

        }
    }

    use "jiangmiao/auto-pairs"
    use "nvim-lua/plenary.nvim"
    use "kyazdani42/nvim-web-devicons"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use 'APZelos/blamer.nvim'
    use {
        'bluz71/vim-moonfly-colors',
        as = 'moonfly'
    }
    use { 'nyoom-engineering/oxocarbon.nvim' }
    use { 'lewis6991/gitsigns.nvim' }
    use({
        "stevearc/conform.nvim",
    })
    use {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    }
end)
