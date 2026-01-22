-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
return function()
    require("nvim-treesitter").setup({
        ensure_installed = settings["treesitter_deps"],
        incremental_selection = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    })

    require("nvim-treesitter").install(settings["treesitter_deps"])
end
