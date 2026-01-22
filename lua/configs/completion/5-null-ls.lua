-- https://github.com/nvimtools/none-ls.nvim?tab=readme-ov-file#examples
return function()
    local null_ls = require("null-ls")

    require("null-ls").setup({
        border = settings["border"],
        debug = false,
        log_level = "warn",
        update_in_insert = false,
        sources = {
            null_ls.builtins.formatting.clang_format.with({
                filetypes = { "c", "cpp", "objc", "objcpp", "cs", "cuda", "proto" },
                extra_args = { "-style={ BasedOnStyle: LLVM, IndentWidth: 4 }" },
            }),
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier.with({
                extra_args = { "--tab-width", "4", "--use-tabs", false },
            }),
        },
        default_timeout = 1000,
    })
end
