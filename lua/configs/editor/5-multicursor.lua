-- https://github.com/jake-stewart/multicursor.nvim?tab=readme-ov-file#advanced-actions
-- :h multicursor
return function()
    local mc = require("multicursor-nvim")
    mc.setup()
    local set = vim.keymap.set

    -- Add or skip cursor above/below the main cursor.
    set({ "n", "x" }, "<M-up>", function() mc.matchAddCursor(-1) end)
    set({ "n", "x" }, "<M-down>", function() mc.matchAddCursor(1) end)

    set({ "n", "x" }, "<", mc.prevCursor)
    set({ "n", "x" }, ">", mc.nextCursor)

    -- (x, y, z)
    set({ "n", "x" }, "<leader>v", function()
        vim.cmd('normal! vi(')
        mc.splitCursors(",")
        vim.api.nvim_input('<Esc><Right>i')
    end)

    set({ "v", "x" }, "/", mc.matchCursors)

    -- Cursor Control
    set("n", "<C-leftmouse>", mc.handleMouse)
    set("n", "<C-leftdrag>", mc.handleMouseDrag)

    -- Disable and enable cursors.
    mc.addKeymapLayer(function(layerSet)
        -- Enable and clear cursors using escape.
        layerSet("n", "<Esc>", function()
            if not mc.cursorsEnabled() then
                mc.enableCursors()
            else
                mc.clearCursors()
            end
        end)
    end)
    
    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorDisabledCursor", { reverse = false })
end
