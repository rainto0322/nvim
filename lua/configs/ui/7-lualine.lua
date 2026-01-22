-- https://github.com/nvim-lualine/lualine.nvim?tab=readme-ov-file#default-configuration
-- :h lualine.txt  /lualine-Default-configuration
return function()
    local function lualine_theme()
        if settings["theme"] == "rose-pine" then
            local p = require("rose-pine.palette")
            local base_section = {
                a = { bg = p.base, fg = p.subtle, gui = "bold" },
                b = { bg = p.base, fg = p.subtle },
                c = { bg = p.base, fg = p.subtle },
            }

            return {
                normal = base_section,
                insert = base_section,
                visual = base_section,
                replace = base_section,
                command = base_section,
                inactive = base_section,
            }
        else
            return "default"
        end
    end

    require("lualine").setup {
        options = {
            theme = lualine_theme,
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            disabled_filetypes = { statusline = { "alpha" } },
            globalstatus = true,
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { { 'branch', icon = '' } },
            lualine_c = { 'filename', 'diagnostics' },
            lualine_x = { 'encoding' },
            lualine_y = { { 'filetype', colored = false, icons_enabled = false } },
            lualine_z = { 'location', 'progress' }
        },
    }
end
