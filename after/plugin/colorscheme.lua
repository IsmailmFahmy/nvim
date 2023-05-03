if (Color == 1 ) then
	Color = 'oxocarbon'
elseif (Color == 2 ) then
	Color = 'gruvbox'
elseif (Color == 3 ) then
	Color = 'rose-pine'
elseif (Color == 4 ) then
	Color = 'dracula'
end




vim.opt.background = "dark"

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
