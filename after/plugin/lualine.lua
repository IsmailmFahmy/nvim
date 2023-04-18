require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
  },
    sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = { 'filetype'},
    lualine_y = {'location'},
    lualine_z = {{'datetime', style = "%H:%M"}}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
