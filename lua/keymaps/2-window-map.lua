local help = require("keymaps.helpers")

--—————————— Window_Keymap ——————————
load_mapping({
    --—————————— Buffer Control ——————————
    ["nv|<leader>q"] = callback(help.DeleteBuffer):noremap():silent():desc("Close Current Buffer"),
    ["nv|<leader>o"] = callback(help.DeleteBufferOther):noremap():silent():desc("Close Other Buffer"),
    ["nv|<M-Tab>"] = cmd("b#"):noremap():silent():nowait():desc("Buffer Perious"),
    ["nv|<leader>u"] = cmd("bp"):noremap():silent():desc("Buffer Prev"),
    ["nv|<leader>i"] = cmd("bn"):noremap():silent():desc("Buffer Next"),
    -- Go to Buffer
    ["nvi|<M-q>"] = cmd("BufferLineGoToBuffer 1"):noremap():silent(),
    ["nvi|<M-w>"] = cmd("BufferLineGoToBuffer 2"):noremap():silent(),
    ["nvi|<M-e>"] = cmd("BufferLineGoToBuffer 3"):noremap():silent(),
    ["nvi|<M-a>"] = cmd("BufferLineGoToBuffer 4"):noremap():silent(),
    ["nvi|<M-s>"] = cmd("BufferLineGoToBuffer 5"):noremap():silent(),
    ["nvi|<M-d>"] = cmd("BufferLineGoToBuffer 6"):noremap():silent(),

    --—————————— Window Control ——————————
    -- split
    ["nv|<leader>ww"] = callback(function() help.SplitWindow(true) end):noremap():silent():desc(
        "Vercel Split Window"),
    ["nv|<leader>ws"] = callback(function() help.SplitWindow(false) end):noremap():silent():desc(
        "Split Window"),
    -- split ratio
    ["nv|<leader>wo"] = cmd("winc o"):noremap():silent():desc("Retain Current Window"),
    ["nv|<leader>wh"] = cmd("vertical resize +35"):noremap():silent():desc("Increase Vertical Scale"),
    ["nv|<leader>wy"] = cmd("vertical resize -35"):noremap():silent():desc("Reduce Current Window"),
    ["nv|<leader>="] = cmd("winc ="):noremap():silent():desc("Balance All Window Size"),
    -- focus
    ["nv|<leader>h"] = cmd("winc h"):noremap():silent():desc("Focus Left Window"),
    ["nv|<leader>j"] = cmd("winc w"):noremap():silent():desc("Focus Below Window"),
    ["nv|<leader>k"] = cmd("winc W"):noremap():silent():desc("Focus Above Window"),
    ["nv|<leader>l"] = cmd("winc l"):noremap():silent():desc("Focus Right Window"),

})
