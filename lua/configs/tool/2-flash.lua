-- https://github.com/folke/flash.nvim
return function()
    require("flash").setup({
        labels = "asdfghjklqwertyuiopzxcvbnm",
        modes = {
            char = {
                enabled = true,
                jump_labels = true,
                keys = { "f", "F", "t", "T", ";", "," },
                char_actions = function()
                    return {
                        ["<"] = "prev",
                        [">"] = "next",
                    }
                end,
            }
        },
        search = {
            forward = true,
            multi_window = true,
            mode = function(str) return '\\<' .. str end,
        },
        jump = {
            nohlsearch = true,
            autojump = true,
            inclusive = 0,
            pos = "end",
        },
        remote_op = {
            restore = true,
            motion = nil,
        },
        prompt = {
            enabled = true,
            prefix = { { " JUMP " .. icons.ui.Ghost .. " ", "FlashPromptIcon" } }
        },
    })
end
