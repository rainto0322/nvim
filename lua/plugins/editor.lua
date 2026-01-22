--—————————— Editor Plugins ——————————
return {
    -- 👯‍♀️ Auto pairs {}
    {
        "nvim-mini/mini.pairs",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("editor.1-pairs")
    },

    -- 🧣 Add & Delete & Replace pairs
    -- sa / sd / sr + (
    {
        "nvim-mini/mini.surround",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("editor.2-surround")
    },

    -- 📑 Move any selection in any direction
    {
        "nvim-mini/mini.move",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("editor.3-move")
    },

    -- 🦐 Split and join arguments
    {
        "nvim-mini/mini.splitjoin",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("editor.4-splitjoin")
    },

    -- 🪓 Multiple cursors
    {
        "jake-stewart/multicursor.nvim",
        lazy = true,
        event = { "CursorHold", "CursorHoldI" },
        config = require("editor.5-multicursor")
    },

}
