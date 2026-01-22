-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
return function()
    local lspconfig = vim.lsp.config
    local servers = settings["lsp_deps"]
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    -- Load personal LSP configuration
    local files = vim.fn.glob(require("core.global").modules_dir .. "/source/*.lua", true, true)
    for _, server in ipairs(servers) do
        for _, file in ipairs(files) do
            local filename = vim.fn.fnamemodify(file, ":t:r")
            if filename == server then
                lspconfig(server, require("source." .. server))
            else
                lspconfig(server, capabilities)
            end
        end
    end
end
