-- https://github.com/DNLHC/glance.nvim?tab=readme-ov-file#keybindings
return function()
    require("glance").setup({
        height = 20,
        zindex = 50,

        preview_win_opts = {
            cursorline = true,
            number = true,
            wrap = true,
        },

        border = {
            enable = settings["border"],
            top_char = "―",
            bottom_char = "―",
        },
        list = {
            position = "right",
            width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
        },

        folds = {
            folded = true, -- Automatically fold list on startup
            fold_closed = icons.ui.ArrowClosed,
            fold_open = icons.ui.ArrowOpen,
        },
    })
end
