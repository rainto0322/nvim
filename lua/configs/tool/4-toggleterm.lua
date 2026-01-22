-- https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file#setup
return function()
    require("toggleterm").setup({
        direction = "horizontal",
        float_opts = {
            border = settings["border"],
            width = 120
        },
        open_mapping = nil,
        highlights = {
            Normal = { link = "Normal" },
            NormalFloat = { link = "NormalFloat" },
            FloatBorder = { link = "FloatBorder", },
        },

    })
end
