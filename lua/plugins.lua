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

    -- Zenmode
    {"folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup{}
    end },

    -- Rust
    {'rust-lang/rust.vim'},

    -- Telescope
    {'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }},

    -- Trouble
    {"folke/trouble.nvim",
    config = function()
        require("trouble").setup{}
    end },

    -- Nvim-Tree
    {"nvim-neo-tree/neo-tree.nvim",
    dependencies = {"MunifTanjim/nui.nvim"}},

    -- Lua Line
    {'nvim-lualine/lualine.nvim'},

    -- Tree-Stitter
    {'nvim-treesitter/nvim-treesitter'},

    -- LSP Support
    --  {'VonHeikemen/lsp-zero.nvim',
    --  dependencies = {
    --     -- LSP Support
    --
    --     -- Autocompletion
    --
    --     -- Snippets
    --     {'L3MON4D3/LuaSnip'},
    --     {'rafamadriz/friendly-snippets'},
    --  },
    -- },

    {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    },
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},

     {"ibhagwan/fzf-lua"},

    -- Alpha Dashboard
    {'goolord/alpha-nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons'}},

    -- Better indents
    {"lukas-reineke/indent-blankline.nvim"},

    -- Buffer Line // Tabs
    {"akinsho/bufferline.nvim"},

    -- Comments
    {'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end},
    {"JoosepAlviste/nvim-ts-context-commentstring"},

    -- Toggle Terminal
    {"akinsho/toggleterm.nvim"},

    -- SmartQ
    {'marklcrns/vim-smartq'},
    -- Edgy
    {"folke/edgy.nvim"},

    -- Which-Key
    -- {"folke/which-key.nvim"},

    -- Barbecue
    {"utilyre/barbecue.nvim",
    name = "barbecue",
    dependencies = {"SmiteshP/nvim-navic"},
    },

    -- Autoclose brackets
    {"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
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
