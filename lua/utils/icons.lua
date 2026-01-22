local icons = {}

-- Basic UI icons
local BasicUI = {
    Modified = "●",
    Hidden = "◌",
    Left = "",
    Right = "",
    ArrowClosed = "",
    ArrowOpen = "",
    True = "",
    False = "",
    Separator = "",
    Event = "",
    Command = "",
    Tag = "",
    File = "",
    Folder = "",
    FolderOpen = "",
    FolderEmpty = "",
    EmptyOpen = "",
    Symlink = "",
    Config = "",
    Debug = "",
    keys = "󰌌",
    Ghost = "󰊠",
    Package = "󰏗",
    Code = "",
    Task = "",
    Start = "",
    Import = "󰋺",
}

icons["ui"] = BasicUI

-- github
icons["git"] = {
    Diff = {

    },
    Status = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "-",
        ignored = "◌",
    }
}

icons["diagnostics"] = {
    error = "󰅚 ",
    warning = "󰀪 ",
    info = " ",
    question = "󰌶 ",
    hint = " ",
}

_G.icons = icons
