vim.o.termguicolors = true
-- vim.cmd [[ colorscheme gruvbox ]]
-- vim.cmd [[ colorscheme rose-pine ]]
vim.cmd [[ colorscheme oxocarbon ]]

function Transparent_bg()
	vim.api.nvim_set_hl(0,"Normal",{ bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat",{ bg = "none"})
end
