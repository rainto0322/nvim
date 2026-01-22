-- Save file prompt
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*",
    callback = function()
        vim.notify("File " .. vim.fn.expand("%") .. " written successfully ", vim.log.levels.INFO)
    end
})

-- Auto change directory
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    pattern = "*",
    callback = function()
        local buf_name = vim.api.nvim_buf_get_name(0)
        local buf_count = 0

        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_buf_is_loaded(buf) then
                local name = vim.api.nvim_buf_get_name(buf)
                if name ~= "" and vim.fn.getbufvar(buf, "&buftype") == "" then
                    buf_count = buf_count + 1
                end
            end
        end

        -- Only when the real buffer is 1 will the directory be changed
        if buf_count == 1 and buf_name ~= "" and vim.fn.isdirectory(vim.fn.fnamemodify(buf_name, ":h")) == 1 then
            vim.cmd("cd " .. vim.fn.fnamemodify(buf_name, ":h"))
        end
    end
})

-- Display error message
vim.api.nvim_create_autocmd("CursorHold", {
    pattern = "*",
    callback = function()
        vim.diagnostic.open_float()
    end
})

-- treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = settings["treesitter_deps"],
    callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "LspFormatting",
    callback = function()
        vim.cmd("syntax on")
        vim.cmd("redraw!")
    end,
})
