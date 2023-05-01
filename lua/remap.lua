vim.g.mapleader = " "  --Remap space as leader key

vim.keymap.set('v','<', '<gv')
vim.keymap.set('v','>', '>gv')
vim.keymap.set('n', '<c-l>', vim.cmd.bn)  -- Ctrl + l ==> next buffer
vim.keymap.set('n', '<c-h>', vim.cmd.bp)  -- Ctrl + h ==> previous buffer
vim.keymap.set('n', '<c-q>', "<cmd>SmartQ!<CR>")  -- Ctrl + w ==> close current buffer
vim.keymap.set('n', '<c-s>', "<cmd>w!<CR>")  -- Ctrl + s ==> save current file
vim.keymap.set('n', '<space>so', ':so %<CR>')  -- space + s + o ==> Source Current File
vim.keymap.set('n', '<space>hl', vim.cmd.nohl)  -- space + s + o ==> Source Current File

vim.keymap.set('n', '<space>ps', ':PackerSync<CR>')  -- space + p + s ==> Packer Sync

vim.keymap.set('n', '<space>n', ':NvimTreeFocus<CR>')  -- space + n ==> Focus NvimTree
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')  -- Ctrl + n ==> Toggle NvimTree

vim.keymap.set('n', '<c-G>', ":echo expand('%:p')<CR>")

vim.api.nvim_set_keymap('','<c-_>' ,'gcc',{noremap = false}) -- Ctrl + / ==> comment

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)



vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"v"}, "Y", [["+y]])


vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })



