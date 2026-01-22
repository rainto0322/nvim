local help = require("keymaps.helpers")

load_mapping({
    -- nvim-tree
    ["nvt|<leader>e"] = cmd("NvimTreeToggle"):noremap():silent():desc("Show File Manager"),
    -- toggleterm
    ["nvt|<leader>m"] = cmd("ToggleTerm"):noremap():silent():desc("Show Terminal"),

    -- telescope.nvim
    ["nvi|<C-e>"] = cmd("lua require('telescope.builtin').buffers()"):noremap():silent():desc("Find Buffers"),
    ["nvi|<C-p>"] = cmd("lua require('telescope.builtin').find_files()"):noremap():silent():desc("Find Files"),
    ["nvi|<C-f>"] = callback(function()
        help.FindWord()
    end):noremap():silent():desc("Find Word In Project"),
    ["nvi|<C-g>"] = cmd("lua require('telescope.builtin').git_commits()"):noremap():silent():desc("Git Commit Checkout"),

    -- flash.nvim
    ["nv|<leader>s"] = callback(function()
        require("flash").jump({ pattern = "." })
    end):noremap():silent():nowait():desc("Jump: Goto one char"),

    -- null-ls
    ["nvi|<C-S-i>"] = cmd("lua vim.lsp.buf.format()"):noremap():silent():desc("Formatter"),

    ["n|<leader>r"] = callback(function()
        vim.cmd("source %")
        vim.notify("Source " .. vim.fn.expand("%:t") .. " successfully ")
    end):noremap():desc("Complete Path Of Current File"),
})
