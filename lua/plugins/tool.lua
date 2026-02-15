--—————————— Tool Plugins ——————————
return {
    -- 📚 Create key bindings that stick
    {
        "folke/which-key.nvim",
        lazy = true,
        enabled = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("tool.1-which-key")
    },

    -- ⚡️ Navigate your code with search labels
    -- f F t T <>
    {
        "folke/flash.nvim",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("tool.2-flash")
    },

    -- 📁 A File Explorerui
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        cmd = {
            "NvimTreeToggle",
            "NvimTreeOpen",
            "NvimTreeFindFile",
            "NvimTreeFindFileToggle",
            "NvimTreeRefresh"
        },
        event = "VeryLazy",
        config = require("tool.3-nvim-tree"),
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },

    -- ⌨️ Toggle multiple terminals
    {
        "akinsho/toggleterm.nvim",
        lazy = true,
        event = "VeryLazy",
        cmd = {
            "ToggleTerm",
            "ToggleTermSetName",
            "ToggleTermToggleAll",
            "ToggleTermSendVisualLines",
            "ToggleTermSendCurrentLine",
            "ToggleTermSendVisualSelection",
        },
        config = require("tool.4-toggleterm")
    },

    -- 🔭 Filter and preview
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        cmd = "Telescope",
        config = require("tool.5-telescope"),
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope-frecency.nvim" },
            { "nvim-telescope/telescope-live-grep-args.nvim" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make"
            },
            {
                "aaronhallaert/advanced-git-search.nvim",
                cmd = { "AdvancedGitSearch" },
                dependencies = {
                    "tpope/vim-rhubarb",
                    "tpope/vim-fugitive",
                    "sindrets/diffview.nvim",
                },
            },
        }
    },


    -- -- 🎞 Image viewer
    -- {
    --     "3rd/image.nvim",
    --     lazy = false,
    --     enabled = true,
    --     priority = 1000,
    --     config = require("tool.6-image")
    -- }

    -- -- 🪟 Peek preview window for LSP
    -- {
    --     "DNLHC/glance.nvim",
    --     lazy = true,
    --     event = "LspAttach",
    --     config = require("tool.6-glance")
    -- }
}
