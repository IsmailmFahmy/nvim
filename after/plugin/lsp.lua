
local cmp = require('cmp')
-- local cmp_lsp = require("cmp_nvim_lsp")
-- require("fidget").setup({})

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'bashls',
    },
    handlers = {
        function(server_name) -- default handler (optional)

            require("lspconfig")[server_name].setup {
                capabilities = capabilities
            }
        end,

        ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
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
        end,
    }
})


--         local cmp_select = { behavior = cmp.SelectBehavior.Select }

-- }
local config = require("fzf-lua.config")
local actions = require("trouble.sources.fzf").actions
config.defaults.actions.files["ctrl-t"] = actions.open

local custom_border = {
    {"╭", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╮", "FloatBorder"},
    {"│", "FloatBorder"},
    {"╯", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╰", "FloatBorder"},
    {"│", "FloatBorder"},
}


-- Apply the custom border to LSP handlers
vim.lsp.handlers["textDocument/hover"] =  vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = custom_border }
)

vim.lsp.handlers["textDocument/signatureHelp"] =  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { border = custom_border }
)

vim.api.nvim_set_option('winblend', 10)  -- Opacity of menus in nvim
vim.api.nvim_set_option('pumblend', 10)  -- Opacity of menus in cmp
vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('winhighlight', 'NormalFloat:Normal,FloatBorder:FloatBorder')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    window = {
        completion = {
            border = custom_border,
        },
        documentation = {
            border = custom_border,
        },
    },


    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),




    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        { name = 'buffer' },
    }, {
        { name = 'path' },
    })
})


vim.diagnostic.config({
    update_in_insert = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
