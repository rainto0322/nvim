--—————————— Plugin_Manager ——————————
load_mapping({
    -- lazy.nvim plugins manager
    ["n|<leader>pp"] = cmd("Lazy"):noremap():silent():desc("Lazy Plugins Manager"),
    -- mini.notify log
    ["n|<leader>pl"] = cmd("lua MiniNotify.show_history()"):noremap():silent():desc("Notify Log"),
    -- mason.nvim lsp manager
    ["n|<leader>pm"] = cmd("Mason"):noremap():silent():desc("Mason Lsp Manager"),
    ["n|<leader>pM"] = cmd("MasonLog"):noremap():silent():desc("Mason Log "),
    -- nvim-treesitter
    ["n|<leader>pt"] = cmd("TSInstallInfo"):noremap():silent():desc("Mason Log "),
})

require("keymaps.1-builtin-map")
require("keymaps.2-window-map")
require("keymaps.3-editor-map")
require("keymaps.4-toolset-map")
