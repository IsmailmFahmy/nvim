require("plugins")
require("remap")
-- ~/.config/nvim






vim.cmd("colorscheme catppuccin-macchiato")

-- Faster loading
vim.loader.enable()

-- clear cmd after execution
local group  = vim.api.nvim_create_augroup("clear", {clear = true})


vim.api.nvim_create_autocmd("CmdlineLeave", {
    callback = function()
        group = "clear",
        vim.fn.timer_start(4000, function()
            vim.cmd [[ echon ' ' ]]
        end)
    end
})


-- ADD Transparent Command to nvim
vim.api.nvim_create_user_command('Transparent', 'lua ColorMyPencils()', {})
vim.api.nvim_create_user_command('Rc', 'e $MYVIMRC', {})

-- vim.api.nvim_create_autocmd("ExitPre", {pattern = "*", group = "clear", command = "mksession! ~/.cache/vim_lastsession.vim"})

local options = {
    modifiable = true,
    incsearch = true,
    backup = false,                          -- creates a backup file
    cmdheight = 1,                           -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    fileencoding = "utf-8",                  -- the encoding written to a file
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- pop up menu height
    showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- enable persistent undo
    updatetime = 300,                        -- faster completion (4000ms default)
    writebackup = false,                     -- if a file is being edited by another program it is not allowed to be edited
    expandtab = true,                        -- convert tabs to spaces
    cursorline = true,                       -- highlight the current line
    number = true,                           -- set numbered lines
    relativenumber = true,                   -- set relative numbered lines
    numberwidth = 2,                         -- set number column width to 2 {default 4}
    ts = 4,
    sw = 4,
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    wrap = true,                             -- display lines as one long line
    linebreak = true,                        -- companion to wrap, don't split words
    scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
    sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
    guifont = "JetBrainsMonoNF Nerd Font",   -- the font used in graphical neovim applications
    whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
    laststatus = 3,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd([[
    set splitbelow splitright
    hi vertsplit guibg=NONE
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])



vim.diagnostic.config({ virtual_text = true })          -- Add text next to errors from LSP


vim.opt.shortmess = "ilmnrx"                            -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                            -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                            -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })         -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")   -- separate vim plugins from neovim in case vim still in use
