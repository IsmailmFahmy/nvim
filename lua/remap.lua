vim.g.mapleader = " " --Remap space as leader key

vim.keymap.set('v', '<', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('n', '<c-l>', vim.cmd.bn, { silent = true })  -- Ctrl + l ==> next buffer
vim.keymap.set('n', '<c-h>', vim.cmd.bp, { silent = true })  -- Ctrl + h ==> previous buffer
vim.keymap.set('i', '<c-v>', '<ESC>"+pa', { silent = true }) -- Ctrl + v (in insert mode) ==> paste system clipboard

vim.keymap.set("n", "q", "<nop>", { silent = true })
vim.keymap.set('n', '<c-s>', "<cmd>w!<CR>", { silent = true })                    -- Ctrl + s ==> save current file
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

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })



-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "v" }, "Y", [["+y]], { silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = true })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Tab out of brackets
vim.cmd([[inoremap <expr> <Tab> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>']])



-- Undo Tree
vim.keymap.set("n", "U", ":UndotreeToggle<CR>", { silent = true, noremap = true })


-- LSP
vim.keymap.set("n", "<leader>t", ":Trouble diagnostics toggle focus=true<cr>", { silent = true, noremap = true })

local opts = { buffer = bufnr, noremap = true, silent = true }

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)


vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
-- vim.keymap.set('n', '<space>wl', function()
--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, opts)
-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
