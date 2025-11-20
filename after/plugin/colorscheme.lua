

Color = 5



--[[

                    1 -> oxocarbon
                    2 -> gruvbox
                    3 -> rose-pine
                    4 -> dracula
                    5 -> catppuccin-macchiato

--]]









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
  Color = 'catppuccin-macchiato'
elseif (Color == 6 ) then
  Color = 'nightfox'
end





vim.cmd.colorscheme(Color)
vim.opt.background = "dark"



function ColorMyPencils()

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

    -- GRUVBOX TRANSPARENT MODE
    if (Color == 'catppuccin') then
        require('catppuccin').setup({
            transparent_background = true
        })
    end

    -- ROSE PINE TRANSPARENT MODE
    if (Color == 'rose-pine')
        then
            require('rose-pine').setup({
                disable_background = true
            })
        end

        -- DRACULA TRANSPARENT MODE
        if (Color == 'dracula') then
            require("dracula").setup({
                transparent_bg = true
            })
        end

        -- GRUVBOX TRANSPARENT MODE
        if (Color == 'gruvbox') then
            require("gruvbox").setup({
                transparent_mode = true
            })
        end

end
