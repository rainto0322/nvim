local global = {}


-- Load global variables
function global:load_variables()
    self.vim_path = vim.fn.stdpath("config")
    self.modules_dir = self.vim_path .. "/lua"
    self.cache_dir = vim.fn.stdpath("cache")
    self.data_dir = vim.fn.stdpath("data")
    self.lazy_path = self.data_dir .. "/lazy/lazy.nvim"
end

-- Extend package path to include configs directory
function global:package_path()
    package.path = package.path .. string.format(
        ";%s;%s",
        self.modules_dir .. "/configs/?.lua",
        self.modules_dir .. "/configs/?/init.lua"
    )
end

-- Load module list from lua/plugins/*.lua
function global:module_list()
    self.modules = {}
    for _, f in ipairs(vim.split(vim.fn.glob(self.vim_path .. "/lua/plugins/*.lua"), "\n")) do
        local m = f:find(self.vim_path .. "/lua") and f:sub(#self.vim_path + #"/lua" + 1, -1)
        if m then
            local mod = require(m:sub(2, #m - 4))
            if type(mod) == "table" then
                for name, conf in pairs(mod) do
                    self.modules[#self.modules + 1] = vim.tbl_extend("force", { name }, conf)
                end
            end
        end
    end
end

global:load_variables()
global:package_path()
global:module_list()

return global
