local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use {'wbthomason/packer.nvim'}
-------------------------------------------------------------

	-- Faster Startup
		use {"lewis6991/impatient.nvim"}
		use {"nathom/filetype.nvim"}
		use {'dstein64/vim-startuptime'}

	-- ColorSchemes
		use {"ellisonleao/gruvbox.nvim" }
		use {'nyoom-engineering/oxocarbon.nvim'}
		use {'rose-pine/neovim'}
		use {'xiyaowong/transparent.nvim'}
		use {'Mofiqul/dracula.nvim'}

    -- Zenmode
        use {
            "folke/zen-mode.nvim",
            config = function()
                require("zen-mode").setup{}
            end
        }
   -- Rust
		use {'rust-lang/rust.vim'}
	-- Telescope
		use {'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }}
    -- Trouble
      use({
          "folke/trouble.nvim",
          config = function()
              require("trouble").setup {1}
          end
      })

	-- Nvim-Tree
		use {'nvim-tree/nvim-tree.lua'}

	-- Nvim-Tree Icons
		use {'nvim-tree/nvim-web-devicons'}

	-- Lua Line
		use {'nvim-lualine/lualine.nvim'}

	-- Tree-Stitter
		use {'nvim-treesitter/nvim-treesitter'}

   -- ChatGPT
		use {"github/copilot.vim"}
   -- LSP Support
	 use {
		 'VonHeikemen/lsp-zero.nvim',
		 branch = 'v1.x',
		 requires = {
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
		 }
	 }


	-- Alpha Dashboard
		use {'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end}

	-- Better indents
		use {"lukas-reineke/indent-blankline.nvim"}

	-- Buffer Line // Tabs
		use {"akinsho/bufferline.nvim"}

	-- Comments
		use {'numToStr/Comment.nvim',
			  config = function()
				  require('Comment').setup()
			  end}
		use {"JoosepAlviste/nvim-ts-context-commentstring"}

	-- Toggle Terminal
		use {"akinsho/toggleterm.nvim"}

	-- Which-Key
		-- use {"folke/which-key.nvim"}

	-- SmartQ
	use {'marklcrns/vim-smartq'}

-------------------------------------------------------------
	if packer_bootstrap then
		require('packer').sync()
	end
end)
