-- /utils/index.lua
local M = {}

---@param template table
---@param overrides? table
---@return table
M.extend = function(template, overrides)
    return vim.tbl_deep_extend("force", template, overrides or {})
end


function _G.log(params) print(vim.inspect(params)) end

return M
