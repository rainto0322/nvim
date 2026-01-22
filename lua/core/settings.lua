local settings = {}

---@type boolean
settings["use_ssh"] = true

---@type "dark"|"light"
settings["background"] = "dark"

---@type "single"|"double"|"rounded"|"solid"|"shadow"|"none"
settings["border"] = "single"

---@type string
settings["theme"] = "rose-pine"

-- Treesitter parsers to install during bootstrap.
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
---@type string[]
settings["treesitter_deps"] = {
    "html", "javascript", "css", "json", "json5", "vue", "svelte", "bash", "lua", "sql"
}

-- LSPs to install during bootstrap.
-- Full list: https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/configs
---@type string[]
settings["lsp_deps"] = {
    "html", "bashls", "jsonls", "lua_ls", "ts_ls", "vtsls", "vue_ls", "svelte"
}


-- General-purpose sources for none-ls to install during bootstrap.
-- Supported sources: https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins
---@type string[]
settings["null_ls_deps"] = {
    "prettier", "stylua",
}

-- Debug Adapter Protocol (DAP) clients to install and configure during bootstrap.
-- Supported DAPs: https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
---@type string[]
settings["dap_deps"] = {
    "js",
}

---@type string | function | table
settings["logo"] = function()
    local hour = tonumber(os.date("%H"))
    local username = os.getenv("USER") or os.getenv("USERNAME") or "friend"
    local greeting

    if hour >= 5 and hour < 12 then
        greeting = "🌞 Good morning ,"
    elseif hour >= 12 and hour < 14 then
        greeting = "☕️ Good noon ,"
    elseif hour >= 14 and hour < 18 then
        greeting = "🌇 Good afternoon !"
    elseif hour >= 18 and hour < 24 then
        greeting = "🌆 Good evening ~"
    else
        greeting = "🌃 Good night ..."
    end

    return greeting .. " " .. username .. "！"
end

_G.settings = settings
