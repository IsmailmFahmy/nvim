

Color = 'oxocarbon'
-- Color = 'gruvbox'
-- Color = 'rose-pine'
-- Color = 'dracula'






vim.o.termguicolors = true
vim.opt.background = "dark"
-- vim.cmd [[ colorscheme gruvbox ]]
-- vim.cmd [[ colorscheme rose-pine ]]
-- vim.cmd [[ colorscheme oxocarbon ]]
-- vim.cmd [[ colorscheme dracula ]]


vim.cmd.colorscheme(Color)
if (Color == 'rose-pine')
  then
  require('rose-pine').setup({
     disable_background = true
	})


	end

function ColorMyPencils()

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end
