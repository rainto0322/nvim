local default_opts = { noremap = false, silent = false, expr = false, nowait = false }

local function make_map(cmd, opts)
    opts = vim.tbl_extend("force", default_opts, opts or {})
    local map = { cmd = cmd, options = opts }
    return setmetatable(map, {
        __index = {
            noremap = function(self) self.options.noremap = true return self end,
            silent = function(self) self.options.silent = true return self end,
            nowait = function(self) self.options.nowait = true return self end,
            expr = function(self) self.options.expr = true return self end,
            desc = function(self, text) self.options.desc = text return self end
        }
    })
end

_G.map = function(cmd) return make_map(cmd) end
_G.cmd = function(cmd) return make_map(("<Cmd>%s<CR>"):format(cmd)) end
_G.callback = function(fn) return make_map('', { callback = fn }) end
_G.load_mapping = function(mappings)
    for key, value in pairs(mappings) do
        if type(value) == "table" then
            local modes, keymap = key:match("([^|]*)|?(.*)")
            for _, mode in ipairs(vim.split(modes, "")) do
                vim.keymap.set(mode, keymap, value.cmd, value.options)
            end
        end
    end
end

