local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'bashls',
        'clangd',
        'terraformls',
        'gitlab_ci_ls',
        'yamlls',
    },

})




local capabilities = require("cmp_nvim_lsp").default_capabilities()


lspconfig.terraformls.setup({
    on_attach = on_attach,
    flags = { debounce_text_changes = 150 },
    capabilities = capabilities,
})

lspconfig.gitlab_ci_ls.setup({
    capabilities = capabilities
})
lspconfig.yamlls.setup({
    capabilities = capabilities
})
lspconfig.arduino_language_server.setup({
    capabilities = capabilities
})
lspconfig.pyright.setup({
    capabilities = capabilities
})
lspconfig.bashls.setup({
    capabilities = capabilities
})
lspconfig.clangd.setup({
    capabilities = capabilities
})


lspconfig.util.window_options = { border = 'double' }

local config = require("fzf-lua.config")
local actions = require("trouble.sources.fzf").actions
config.defaults.actions.files["ctrl-t"] = actions.open

-- ========================= Custom LSP Configs =========================

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

require('crates').setup({
    completion = {
        cmp = {
            enabled = true,
        }
    }
})

-- Keymaps: 
-- ~/.config/nvim/lua/remap.lua
