vim.api.nvim_set_option('winblend', 5)  -- Opacity of menus in nvim
vim.api.nvim_set_option('pumblend', 5)  -- Opacity of menus in cmp
vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('winhighlight', 'NormalFloat:Normal,FloatBorder:FloatBorder')




-- require("luasnip.loaders.from_vscode").lazy_load()   -- uncomment for extra snippets
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    -- view = {
    --     entries = {
    --         name = "custom",
    --         selection_order = "near_cursor",
    --         follow_cursor = true,
    --     },
    -- },

        mapping = cmp.mapping.preset.insert({

        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion

        -- ['<CR>'] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         if luasnip.expandable() then
        --             luasnip.expand()
        --         else
        --             cmp.confirm({
        --                 select = true,
        --             })
        --         end
        --     else
        --         fallback()
        --     end
        -- end),

        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         cmp.select_next_item()
        --     elseif luasnip.locally_jumpable(1) then
        --         luasnip.jump(1)
        --     else
        --         fallback()
        --     end
        -- end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<C-y>"] = cmp.mapping(
            cmp.mapping.confirm({
                select = true,
                behavior = cmp.ConfirmBehavior.Insert,
            }),
            { "i", "c" }
        ),
        -- ["<C-b>"] = cmp.mapping.scroll_docs(-5),
        -- ["<C-f>"] = cmp.mapping.scroll_docs(5),
        ["<C-e>"] = cmp.mapping.abort(), -- Only one abort key
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'crates' },
    }, {
        { name = 'path' },
    })
})

----------------------------------------
-- If you want insert `(` after select function or method item
require('nvim-autopairs').setup({})
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

local example_setup = {
    on_attach = function(client, bufnr)
        require "lsp_signature".on_attach({
            bind = true,
            handler_opts = {
                border = "rounded"
            }
        }, bufnr)
    end,
}
