local ui, git_status = icons["ui"], icons["git"].Status

return {
    folder = {
        arrow_open = ui.ArrowOpen,
        arrow_closed = ui.ArrowClosed,
        default = ui.Folder,
        empty = ui.FolderEmpty,
        empty_open = ui.FolderEmpty,
        open = ui.FolderOpen,
        symlink = ui.Symlink,
    },
    git = git_status
}
