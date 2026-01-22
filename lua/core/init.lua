-- global icons
require("utils.icons")
-- global settings
require("core.settings")
-- nvim options
require("core.options")
-- auto command
require("core.event")
-- initialization
require("core.setup")
-- keymap functions
require("utils.bind")
-- load keymaps
require("keymaps")

-- set colorscheme
local function set_colorscheme()
    vim.api.nvim_set_option_value("background", settings["background"], {})
    local success = pcall(vim.cmd.colorscheme, settings["theme"])
    if not success then
        settings["theme"] = "default"
        vim.cmd.colorscheme(settings["theme"])
    end
end

set_colorscheme()
