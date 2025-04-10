local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'bashls',
        'clangd'
    },

})


lspconfig.arduino_language_server.setup({})
lspconfig.pyright.setup({})
lspconfig.bashls.setup({})
lspconfig.clangd.setup({})

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = { version = "Lua 5.1" },
            diagnostics = {
                globals = { "vim", "it", "describe", "before_each", "after_each" },
            }
        }
    }
}


local config = require("fzf-lua.config")
local actions = require("trouble.sources.fzf").actions
config.defaults.actions.files["ctrl-t"] = actions.open


require('crates').setup({
    completion = {
        cmp = {
            enabled = true,
        }
    }
})








