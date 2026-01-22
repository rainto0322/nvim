return function()
    require("mini.cursorword").setup({ delay = 20 })
    vim.api.nvim_create_autocmd('FileType', {
        pattern = {
            'NvimTree',        -- nvim-tree
            'neo-tree',        -- neo-tree
            'netrw',           -- netrw
            'fugitive',        -- fugitive
            'TelescopePrompt', -- telescope
            'toggleterm',      -- toggleterm
            'help',            -- help document
            'qf',              -- quickfix
            'dirvish',         -- dirvish
            'dashboard',       -- dashboard
        },
        callback = function()
            vim.b.minicursorword_disable = true
        end,
    })
end
