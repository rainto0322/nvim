-- https://cmp.saghen.dev/
return function()
    require("blink.cmp").setup({
        enabled = function()
            local mode = vim.api.nvim_get_mode().mode
            return mode ~= 'c'
        end,
        sources = {
            default = { 'snippets', 'lsp', 'buffer', 'path', 'spell', 'cmdline' },
            providers = require("configs.completion.source")
        },
        completion = {
            menu = {
                auto_show = true,
                border = settings["border"],
                draw = {
                    columns = { { 'label', gap = 1 }, { 'kind_icon', gap = 1 } },
                    components = {
                        label = {
                            width = { fill = true, max = 20 },
                            text = function(ctx) return ctx.label .. ctx.label_detail end,
                        },
                        kind_icon = {
                            -- text = function(ctx) return ctx.kind_icon .. ctx.icon_gap end,
                            text = function(ctx) return "" end,
                            -- highlight = function(ctx) return { { group = ctx.kind_hl, priority = 10000 } } end,
                        },
                        kind = {
                            ellipsis = false,
                            width = { fill = true },
                            text = function(ctx) return ctx.kind end,
                            highlight = function(ctx) return ctx.kind_hl end,
                        },
                    }
                },
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 100,
                treesitter_highlighting = true,
                window = { border = settings["border"] }
            }
        },

        signature = { enabled = true },
        keymap = {
            -- preset = "default"
            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<Down>'] = { 'select_next', 'fallback' },
            ['<CR>'] = { 'accept', 'fallback' },
            ['<C-e>'] = { 'hide', 'fallback' },
            ['<Tab>'] = { 'snippet_forward', 'fallback' },
            ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
            ['<C-o>'] = { 'show_documentation' },
            ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
        }
    })
end
