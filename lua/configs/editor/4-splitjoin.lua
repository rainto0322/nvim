-- https://github.com/nvim-mini/mini.splitjoin?tab=readme-ov-file#default-config
return function()
    require("mini.splitjoin").setup({
        mappings = {
            toggle = 'gs',
            split = '',
            join = '',
        },
        detect = {
            -- Array of Lua patterns to detect region with arguments.
            -- Default: { '%b()', '%b[]', '%b{}' }
            brackets = nil,
            separator = ',',
            exclude_regions = nil,
        }
    })
end
