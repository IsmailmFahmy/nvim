vim.opt.background = "dark"





--     1 -> oxocarbon
--     2 -> gruvbox
--     3 -> rose-pine
--     4 -> dracula
--     5 -> catppuccin

Color = 5








------------------------------------------------------------------------------------
if (Color == 1 ) then
  Color = 'oxocarbon'
elseif (Color == 2 ) then
  Color = 'gruvbox'
elseif (Color == 3 ) then
  Color = 'rose-pine'
elseif (Color == 4 ) then
  Color = 'dracula'
elseif (Color == 5 ) then
  Color = 'catppuccin'
end

vim.cmd.colorscheme(Color)



-- if (Color == 'catppuccin')
--   then
-- 	 require('catppuccin').setup({
--     transparent_background = true,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = false,
--     dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--     }
-- 	 })
--   end
-- if (Color == 'rose-pine')
--   then
--   require('rose-pine').setup({
--      disable_background = true
-- 	})
-- 	end

function ColorMyPencils()

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end
