--—————————— Ui Plugins ——————————
return {
    -- 🏠 Homepage dashboard
    {
        "nvim-mini/mini.starter",
        lazy = true,
        event = "VimEnter",
        config = require("ui.1-starter")
    },

    -- 💬 Notification manager
    {
        "nvim-mini/mini.notify",
        lazy = true,
        cmd = "MiniNotify",
        event = "VeryLazy",
        config = require("ui.2-notify")
    },

    -- 📐 Adds indentation guides to Neovim
    {
        "nvim-mini/mini.indentscope",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("ui.3-indent")
    },

    -- 📌 Highlight keywords
    {
        "nvim-mini/mini.hipatterns",
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        config = require("ui.4-hipatterns")
    },

    -- ✍️ Highlight cursorword
    {
        "nvim-mini/mini.cursorword",
        lazy = true,
        event = { "CursorMoved", "CursorMovedI" },
        config = require("ui.5-cursorword")
    },

    -- 🪟 Top bar, A snazzy buffer line
    {
        "akinsho/bufferline.nvim",
        lazy = true,
        event = { "BufReadPre", "BufAdd", "BufNewFile" },
        config = require("ui.6-bufferline"),
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },

    -- ℹ️ Bottom bar, statusline plugin
    {
        "nvim-lualine/lualine.nvim",
        lazy = true,
        event = { "VimEnter", "VeryLazy", "BufReadPost", "BufAdd", "BufNewFile" },
        config = require("ui.7-lualine")
    },

    --—————————— 🌈 Neovim Themes ——————————--
    {
        "rose-pine/neovim",
        lazy = true,
        name = "rose-pine",
        priority = 1000,
        config = require("configs.ui.rose-pine"),
    }
}
