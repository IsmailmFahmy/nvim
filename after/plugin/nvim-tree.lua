local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end


nvim_tree.setup {
  renderer = {
    root_folder_modifier = ":t",
    icons = {
        glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            modified = "●",
            folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
            },
            git = {
                unstaged = "●",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
            },
        },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
    }
  }
