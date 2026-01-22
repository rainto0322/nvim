-- https://github.com/nvim-tree/nvim-tree.lua?tab=readme-ov-fkile#help
-- :h nvim-tree
return function()
    require("nvim-tree").setup {
        sort_by = "name",
        filters = { dotfiles = true },
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_cwd = true,
        update_focused_file = { enable = true, update_root = true },
        --—————————— 🎈 Float Window ——————————--
        view = {
            float = {
                enable = true,
                open_win_config = {
                    relative = "editor",
                    border = settings["border"],
                    row = 1,
                    width = 20,
                    height = 15,
                }
            },
            adaptive_size = {
                enable = true,
                max_height = 30,
            },
        },
        git = { enable = true, ignore = true, timeout = 500 },
        renderer = {
            root_folder_label = false,
            highlight_git = true,
            indent_markers = { enable = true },
            icons = {
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },
                webdev_colors = true,
                git_placement = "after",
                glyphs = require("utils.icons.nvim-tree-icon")
            },
        },
        actions = {
            file_popup = {
                open_win_config = {
                    border = settings["border"]
                }
            }
        },
        --—————————— ⌨️ Keymap in nvim-tree ——————————--
        on_attach = function(bufnr)
            local api = require("nvim-tree.api")
            local set = vim.keymap.set
            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- :h nvim-tree-api
            set("n", "<Esc>", api.tree.close, opts("Close NvimTree"))
            set("n", "r", api.tree.reload, opts("Refresh"))
            set("n", "h", api.node.navigate.parent, opts("Close Folder"))
            set("n", "l", api.node.open.edit, opts("Open Folder"))
            set("n", "<CR>", api.node.open.edit, opts("Open Folder"))
            set("n", "H", api.node.navigate.sibling.prev, opts("Previous Sibling"))
            set("n", "L", api.node.navigate.sibling.next, opts("Next Sibling"))
            set("n", "n", api.fs.create, opts("Create File"))
            set("n", "i", api.fs.rename_basename, opts("Rename File Name"))
            set("n", "I", api.fs.rename, opts("Rename File"))
            set("n", "y", api.fs.copy.node, opts("Copy File"))
            set("n", "x", api.fs.cut, opts("Cut File"))
            set("n", "p", api.fs.paste, opts("Paste File"))
            set("n", "u", api.fs.copy.filename, opts("Copy Name"))
            set("n", "U", api.fs.copy.relative_path, opts("Copy Relative Path"))
            set("n", "d", api.fs.trash, opts("Trash"))
            set("n", "D", api.fs.remove, opts("Delete"))
            set("n", "f", api.live_filter.start, opts("Filter"))
            set("n", "F", api.live_filter.clear, opts("Clean Filter"))
            set("n", ".", api.tree.toggle_hidden_filter, opts("Toggle Hidden File"))
            set("n", "<M-.>", api.tree.toggle_gitignore_filter, opts("Toggle Git Ignore Filter"))
            set("n", "<C-w>", api.tree.expand_all, opts("Expand All"))
            set("n", "<C-W>", api.tree.collapse_all, opts("Collapse All"))
            set("n", "<C-u>", api.tree.change_root_to_parent, opts("Up Root"))
            set("n", "<C-i>", api.tree.change_root_to_node, opts("Cd Root"))
            set("n", "gp", api.node.navigate.git.prev, opts("Prev Git"))
            set("n", "gn", api.node.navigate.git.next, opts("Next Git"))
            set("n", "ge", api.node.navigate.diagnostics.next, opts("Next Diagnostic"))
            set("n", "<C-v>", api.node.open.vertical, opts("Open Vertical Split"))
            set("n", "<C-x>", api.node.open.horizontal, opts("Open Horizontal Split"))
            set("n", "<C-k>", api.node.show_info_popup, opts("Info"))
        end,
    }
end
