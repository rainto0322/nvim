local fn = vim.fn
local global = require("core.global")

function LoadLazy()
    -- https://lazy.folke.io/configuration
    vim.opt.rtp:prepend(global.lazy_path)
    local lazy_config = require("configs.ui.lazy-config")
    require("lazy").setup(global.modules, lazy_config)
end

function SetupLazy()
    local git_url = settings["use_ssh"]
        and "git@github.com:folke/lazy.nvim.git"
        or "https://github.com/folke/lazy.nvim.git"

    local cmd = { "git", "clone", "--filter=blob:none", git_url, global.lazy_path }

    vim.fn.jobstart(cmd, {
        stdout_buffered = true,
        on_stderr = function(_, data)
            for _, line in ipairs(data) do
                if line ~= "" then print(line) end
            end
        end,
        on_exit = function(_, code) LoadLazy() end
    })
end

if fn.empty(fn.glob(global.lazy_path)) > 0 then
    SetupLazy()
else
    LoadLazy()
end
