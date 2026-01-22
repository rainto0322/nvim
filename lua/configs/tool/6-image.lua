-- https://github.com/3rd/image.nvim?tab=readme-ov-file#default-configuration
return function()
    require("image").setup({
        backend = "kitty", -- or "ueberzug" or "sixel"
        processor = "magick_cli",
        integrations = {
            html = { enabled = false },
        },
        rocks = {
            hererocks = true,
            enabled = true,
        },
        render = {
            max_width = 500,
            max_height = 500,
            background = "transparent",
        },
        mappings = {
            zoom_in = "<C-=>",
            zoom_out = "<C-->",
            reset_zoom = "<C-0>",
            next_image = "<C-l>",
            prev_image = "<C-h>",
        },
        window_overlap_clear_enabled = true,
        filetype_exclude = { "markdown", "text", "help" },
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }
    })
end
