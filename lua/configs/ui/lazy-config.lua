local global = require("core.global")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "lazy",
    callback = function()
        vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", { buffer = true, desc = "Close Lazy" })
    end,
})

return {
    root = global.data_dir .. "/lazy",
    git = {
        timeout = 300,
        url_format = settings["use_ssh"] and "git@github.com:%s.git" or "https://github.com/%s.git"
    },
    install = { colorscheme = { settings["theme"] } },
    ui = {
        wrap = true,
        backdrop = 100,
        border = settings["border"],
        size = { width = 0.45, height = 0.6 },
        icons = require("utils.icons.lazy-icons"),
    },

    performance = {
        cache = {
            enabled = true,
            path = global.cache_dir .. "/lazy/cache",
            disable_events = { "UIEnter", "BufReadPre" },
            ttl = 3600 * 24 * 2,
            reset_packpath = true,
        },
        rtp = {
            reset = true,
            paths = {},
            disabled_plugins = {},
        },
    },
}
