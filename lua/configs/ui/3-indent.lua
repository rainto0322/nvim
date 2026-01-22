-- https://github.com/nvim-mini/mini.indentscope?tab=readme-ov-file#default-config
return function()
    require('mini.indentscope').setup({
        symbol = '╎',
        mappings = {
            -- Select code block (Visual Mode vii/vai)
            object_scope = 'ii',
            object_scope_with_border = 'ai',
            -- Jump to respective border line
            goto_top = '[i',
            goto_bottom = ']i',
        },
    })
end
