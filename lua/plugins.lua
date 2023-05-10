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
require('lazy').setup({
-------------------------------------------------------------

	-- Faster Startup
		 {"lewis6991/impatient.nvim"},
		 {"nathom/filetype.nvim"},
		 {'dstein64/vim-startuptime'},

	-- ColorSchemes
		 {"ellisonleao/gruvbox.nvim" },
		 {'nyoom-engineering/oxocarbon.nvim'},
		 {'rose-pine/neovim'},
		 {'xiyaowong/transparent.nvim'},
		 {'Mofiqul/dracula.nvim'},

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
              require("trouble").setup{1}
          end },

	-- Nvim-Tree
		 {'nvim-tree/nvim-tree.lua'},

	-- Lua Line
		 {'nvim-lualine/lualine.nvim'},

	-- Tree-Stitter
		 {'nvim-treesitter/nvim-treesitter'},

   -- LSP Support
	  {'VonHeikemen/lsp-zero.nvim',
		 branch = 'v1.x',
		 dependencies = {
			 -- LSP Support
			 {'neovim/nvim-lspconfig'},
			 {'williamboman/mason.nvim'},
			 {'williamboman/mason-lspconfig.nvim'},

			 -- Autocompletion
			 {'hrsh7th/nvim-cmp'},
			 {'hrsh7th/cmp-buffer'},
			 {'hrsh7th/cmp-path'},
			 {'saadparwaiz1/cmp_luasnip'},
			 {'hrsh7th/cmp-nvim-lsp'},
			 {'hrsh7th/cmp-nvim-lua'},

			 -- Snippets
			 {'L3MON4D3/LuaSnip'},
			 {'rafamadriz/friendly-snippets'},
		 },
	 },


	-- Alpha Dashboard
		 {'goolord/alpha-nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end },

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

	-- Which-Key
		 -- {"folke/which-key.nvim"},

   -- Barbecue
	  {
		 "utilyre/barbecue.nvim",
		 name = "barbecue",
		 version = "*",
		 dependencies = {
			"SmiteshP/nvim-navic",
		 },
		 opts = {},
	  }
-------------------------------------------------------------
 })
require("lazy").setup(plugins, opts)
