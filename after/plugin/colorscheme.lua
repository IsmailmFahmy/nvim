vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

function transparent_bg()
	vim.api.nvim_set_hl(0,"Normal",{ bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat",{ bg = "none"})
end

