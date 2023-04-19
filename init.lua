require("plugins")
-- show number line
vim.wo.number = true
vim.keymap.set('n', '<space>pv', vim.cmd.Ex)



-- Suppress errors in Windows
vim.notify = function (msg, log_level, _opts)
    if msg:match("exit code") then return end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
    vim.api.nvim_echo({{msg}}, true, {})
    end
  end
