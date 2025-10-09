local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then return

configs.setup {
    auto_install = true,
    ensure_installed = { "bash", "c", "javascript", "lua", "python", "css", "rust", "java", "yaml", "toml", "terraform", }, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing

	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},

	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
}

end
