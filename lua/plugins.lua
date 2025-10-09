local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -------------------------------------------------------------

    -- Faster Startup
    {'dstein64/vim-startuptime'},

    -- ColorSchemes
    {"ellisonleao/gruvbox.nvim" },
    {'nyoom-engineering/oxocarbon.nvim'},
    {'rose-pine/neovim'},
    {'xiyaowong/transparent.nvim'},
    {'Mofiqul/dracula.nvim'},
    { "catppuccin/nvim", name = "catppuccin" },

    -- Undo Tree
    {'mbbill/undotree'},

    -- Better UI
    {'stevearc/dressing.nvim'},

    -- Rust
    {
        'rust-lang/rust.vim',
        ft = "rust"
    },
    {
        'mrcjkb/rustaceanvim',
        lazy = false, -- This plugin is already lazy
    },
    {
        'saecki/crates.nvim',
        tag = 'stable',
        ft = "toml",
    },


    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        'nvim-telescope/telescope-ui-select.nvim',
    },


    -- Trouble
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({})
        end
    },

    -- Nvim-Tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {"MunifTanjim/nui.nvim"}

    },

    -- Lua Line
    {'nvim-lualine/lualine.nvim'},

    -- Tree-Stitter
    {'nvim-treesitter/nvim-treesitter'},


    -- Snippets
    {
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
    },

    -- Mason // LSP
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        "ibhagwan/fzf-lua",
    },

    {
        "qvalentin/helm-ls.nvim",
        ft = "helm",
        opts = {},
    },

    { -- hover 
        "lewis6991/hover.nvim"
    },

    -- Alpha Dashboard
    {
        'goolord/alpha-nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons'}
    },

    -- Better indents
    {"lukas-reineke/indent-blankline.nvim"},

    -- Buffer Line // Tabs
    {"akinsho/bufferline.nvim"},

    -- Comments
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- Toggle Terminal
    {"akinsho/toggleterm.nvim"},



    -- Barbecue
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        dependencies = {"SmiteshP/nvim-navic"},
        config = function ()
            require("barbecue").setup({})
        end
    },

    -- Autoclose brackets
    {
        "windwp/nvim-autopairs",
    },

     -- CSS Colors
     {"ap/vim-css-color"},

     -- Nvim Surround
     {"kylechui/nvim-surround",
     event = "VeryLazy",
     config = function()
         require("nvim-surround").setup({}) end
     },
-------------------------------------------------------------

}
 local opts = {}
 require("lazy").setup(plugins, opts)
