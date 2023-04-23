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
		use 'dstein64/vim-startuptime'

	-- ColorSchemes
		use {"ellisonleao/gruvbox.nvim" }
		use {'nyoom-engineering/oxocarbon.nvim'}
		use {'rose-pine/neovim'}

	-- Telescope
		use {'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }}

	-- Nvim-Tree
		use {'nvim-tree/nvim-tree.lua'}

	-- Nvim-Tree Icons
		use {'nvim-tree/nvim-web-devicons'}

	-- Lua Line
		use {'nvim-lualine/lualine.nvim'}

	-- Tree-Stitter
		use {'nvim-treesitter/nvim-treesitter'}

	-- LSP Zero
		use {'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- buffer completions
			{'hrsh7th/cmp-path'},         -- path completions
			{'saadparwaiz1/cmp_luasnip'}, -- snippet completions
			{'hrsh7th/cmp-nvim-lua'},     -- Optional
		}}

	-- Snippets
		use {"L3MON4D3/LuaSnip"} --snippet engine
		use {"rafamadriz/friendly-snippets"} -- a bunch of snippets to use

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
