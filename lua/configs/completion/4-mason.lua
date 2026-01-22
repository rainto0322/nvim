-- https://github.com/mason-org/mason.nvim?tab=readme-ov-file#configuration
return function()    require("mason").setup({
        ui = {
            width = 0.45,
            height = 0.6,
            border = settings["border"],
            backdrop = 100,
            log_level = vim.log.levels.ERROR,
            icons = {
                package_installed = icons.ui.True,
                package_uninstalled = icons.ui.False,
                package_pending = icons.ui.Import,
            },
            keymaps = {
                toggle_package_expand = "<CR>",
                install_package = "i",
                update_package = "u",
                check_package_version = "c",
                update_all_packages = "U",
                check_outdated_packages = "C",
                uninstall_package = "x",
                cancel_installation = "x",
                apply_language_filter = "<C-f>",
                toggle_package_install_log = "<CR>",
                toggle_help = "?",
            },
        },
        github = {
            download_url_template = "https://github.com/%s/releases/download/%s/%s"
        }

    })

    --—————————— lsp ——————————
    require("mason-lspconfig").setup({
        ensure_installed = settings["lsp_deps"],
        automatic_installation = true,
    })

    --—————————— formatter ——————————
    require("mason-null-ls").setup({
        ensure_installed = settings["null_ls_deps"],
        automatic_installation = false,
        automatic_setup = true,
        handlers = {},
    })

    require("mason-nvim-dap").setup({
        ensure_installed = settings["dap_deps"],
        automatic_installation = false,
    })
end
