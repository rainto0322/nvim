-- https://github.com/nvim-mini/mini.notify?tab=readme-ov-file#default-config
return function()
    require("mini.notify").setup({
        content = {
            format = function(notif)
                local time = vim.fn.strftime('%H:%M:%S', math.floor(notif.ts_update))
                return string.format(' [%s] %s ', time, notif.msg)
            end
        },
        lsp_progress = { enable = true },
        window = {
            max_width_share = 0.3,
            winblend = 0,
            config = { title = "", border = settings["border"] },
        }
    })

    local vim_notify_opts = {
        ERROR = { duration = 3000, hl_group = 'DiagnosticError' },
        WARN  = { duration = 3000, hl_group = 'DiagnosticWarn' },
        INFO  = { duration = 3000, hl_group = 'DiagnosticInfo' },
        DEBUG = { duration = 0, hl_group = 'DiagnosticHint' },
        TRACE = { duration = 0, hl_group = 'DiagnosticOk' },
        OFF   = { duration = 0, hl_group = 'MiniNotifyNormal' },
    }

    vim.notify = require("mini.notify").make_notify(vim_notify_opts)
end
