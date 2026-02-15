-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers
-- :h telescope
return function()
    local actions = require("telescope.actions")
    require("telescope").setup({
        defaults = {
            --—————————— icons_enabled ——————————--
            borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            prompt_prefix = " ",
            selection_caret = " ➜ ",
            entry_prefix = "   ",
            --—————————— layout_config ——————————--
            sorting_strategy = "ascending", -- default "descending"
            layout_config = {
                width = 0.5,
                height = 0.6,
                prompt_position = "top",
                preview_cutoff = 120,
                horizontal = { preview_width = 0.5 },
                vertical = { mirror = false },
            },
            file_ignore_patterns = { ".git/", "node_modules/","public/", "%.min.%", ".vercel/", ".cache", "build/", "%.class", "%.mkv", "%.mp4", "%.zip" },
            --—————————— keymapping ——————————--
            mappings = {
                i = {
                    ["<Esc>"] = actions.close,
                    ["<leader>ws"] = actions.select_horizontal,
                    ["<leader>ww"] = actions.select_vertical,
                    ["<C-e>"] = actions.move_selection_next,
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
            frecency = {
                show_scores = true,
                show_unindexed = true,
                ignore_patterns = { "*.git/*", "*/tmp/*" },
            },
            advanced_git_search = {
                previewer = false,
                entry_default_author_or_date = "author", -- one of "author" or "date"
            },
        }
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("frecency")
    require("telescope").load_extension("advanced_git_search")
end
