local lsp_server_list = {
        'lua_ls',
        'helm_ls',
        'pyright',
        'rust_analyzer',
        'bashls',
        'clangd',
        'terraformls',
        'tflint',
        'gitlab_ci_ls',
        'yamlls',
    }

require("mason").setup()
require("mason-lspconfig").setup({ensure_installed = lsp_server_list})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

for _, srvr in ipairs(lsp_server_list) do
    vim.lsp.config(
            srvr , {
            capabilities = capabilities,
            on_attach = on_attach
            })
end


local config = require("fzf-lua.config")
local actions = require("trouble.sources.fzf").actions
config.defaults.actions.files["ctrl-t"] = actions.open

-- ========================= Custom LSP Configs =========================

vim.lsp.config('lua_ls', {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = { version = "Lua 5.1" },
            diagnostics = {
                globals = { "vim", "it", "describe", "before_each", "after_each" },
            }
        }
    }
})


vim.lsp.config('helm_ls', {
    settings = {
    ['helm-ls'] = {
      yamlls = {
        path = "yaml-language-server",
      }   }
  }
})

require('crates').setup({
    completion = {
        cmp = {
            enabled = true,
        }
    }
})

-- Keymaps: 
-- ~/.config/nvim/lua/remap.lua
