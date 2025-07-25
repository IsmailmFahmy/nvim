-- local function nmap(key, command)
--     vim.keymap.set('v', key , command, {silent = true})
-- end

vim.g.mapleader = " " --Remap space as leader key
vim.keymap.set({'n', 'i', 'v'}, '<F1>', '<Nop>')

vim.keymap.set('v', '<', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('n', '<c-l>', vim.cmd.bn, { silent = true })  -- Ctrl + l ==> next buffer
vim.keymap.set('n', '<c-h>', vim.cmd.bp, { silent = true })  -- Ctrl + h ==> previous buffer
vim.keymap.set('i', '<c-v>', '<ESC>"+pa', { silent = true }) -- Ctrl + v (in insert mode) ==> paste system clipboard





-- vim.keymap.set("n", "q", "<nop>", { silent = true })
-- vim.keymap.set('n', '<c-s>', "<cmd>w!<CR>", { silent = true })                    -- Ctrl + s ==> save current file
vim.keymap.set('n', '<leader>ss', ":mksession! ~/.cache/vim_lastsession.vim<CR>") -- Space + s + s ==> save current session
vim.keymap.set('n', '<leader>rs', ":source ~/.cache/vim_lastsession.vim<CR>")     -- Space + r + s ==> resotre last session
vim.keymap.set('n', '<space>so', ':so %<CR>', { silent = true })                  -- space + s + o ==> Source Current File
vim.keymap.set('n', '<space>hl', vim.cmd.nohl, { silent = true })                 -- space + s + o ==> Source Current File


vim.keymap.set('n', '<space>n', ':Neotree focus<CR>', { silent = true }) -- space + n ==> Focus NvimTree
vim.keymap.set('n', '<c-n>', ':Neotree toggle<CR>', { silent = true })   -- Ctrl + n ==> Toggle NvimTree

vim.keymap.set('n', '<c-G>', ":echo expand('%:p')<CR>", { silent = true })

vim.api.nvim_set_keymap('v', '<c-_>', 'gc', { noremap = false, silent = true }) -- Ctrl + / ==> comment
vim.api.nvim_set_keymap('v', '<c-/>', 'gc', { noremap = false, silent = true }) -- Ctrl + / ==> comment
vim.api.nvim_set_keymap('n', '<c-_>', 'gcc', { noremap = false, silent = true }) -- Ctrl + / ==> comment
vim.api.nvim_set_keymap('n', '<c-/>', 'gcc', { noremap = false, silent = true }) -- Ctrl + / ==> comment




vim.keymap.set("n", "<A-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { silent = true })


vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2 <CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2 <CR>", { silent = true })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2 <CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2 <CR>", { silent = true })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv gv", { silent = true })
-- nmap("J", ":m '>+1<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })



-- greatest remap ever
-- in select mode, paste without changing the content of the clipboard buffer
vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true })

-- next greatest remap ever : asbjornHaland
-- paste from OS clipboard
vim.keymap.set("v", "Y", [["+y]], { silent = true })

-- edit all instances of this word at once
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = true })


vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Tab out of brackets
vim.cmd([[inoremap <expr> <Tab> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>']])



-- Undo Tree
vim.keymap.set("n", "U", ":UndotreeToggle<CR>", { silent = true, noremap = true })


-- LSP


vim.keymap.set("n", "<leader>t", ":Trouble diagnostics toggle focus=true<cr>", { silent = true, noremap = true })

local opts = { buffer = bufnr, noremap = true, silent = true }

-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, opts)


vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set({'n', 'i'}, '<C-k>', vim.lsp.buf.signature_help, opts) -- Function Signature
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)




--  NVIM SURROUND --

--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dsf             function calls
