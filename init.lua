require("plugins")

-- show number line
vim.wo.number = true 


vim.g.mapleader = " "  --Remap space as leader key

vim.keymap.set('n', '<c-l>', vim.cmd.bn)  -- Ctrl + l ==> next buffer
vim.keymap.set('n', '<c-h>', vim.cmd.bn)  -- Ctrl + h ==> previous buffer
vim.keymap.set('n', '<c-w>', vim.cmd.bdelete)  -- Ctrl + w ==> close current buffer

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')  -- Ctrl + n ==> Toggle NvimTree
vim.keymap.set('n', '<space>n', ':NvimTreeFocus<CR>')  -- space + n ==> Focus NvimTree

vim.api.nvim_set_keymap('','<c-_>' ,'gcc',{noremap = false}) -- Ctrl + / ==> comment


-- Suppress errors in Windows
vim.notify = function (msg, log_level, _opts)
    if msg:match("exit code") then return end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
    vim.api.nvim_echo({{msg}}, true, {})end
    end
