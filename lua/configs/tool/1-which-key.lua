-- https://github.com/folke/which-key.nvim?tab=readme-ov-file#%EF%B8%8F-configuration
return function()
  require("which-key").setup {
    preset = "helix",
    filter = function(mapping)
      return mapping.desc and mapping.desc ~= ""
    end,
    win = { border = settings["border"] },
    expand = 1,
    spec = {
      { "g`", group = "Jump To Mark Column" },
      { "g'", group = "Jump To Mark Line" },
      -- { "<leader>p", group = icons.ui.Package .. " Lazy Package" },
    },
    plugins = {
      spelling = {
        enabled = true,  -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 8, -- how many suggestions should be shown in the list?
      },
      presets = {
        operators = false,    -- adds help for operators like d, y, ...
        motions = false,      -- adds help for motions
        text_objects = false, -- help for text objects triggered after entering an operator
        windows = false,      -- default bindings on <c-w>
        nav = false,          -- misc bindings to work with windows
        z = false,            -- bindings for folds, spelling and others prefixed with z
        g = false,            -- bindings for prefixed with g
      },
    },
    icons = {
      group = "",
      rules = false,
      colors = false,
      breadcrumb = icons.ui.Separator,
      separator = "",
      keys = require("utils.icons.which-key-icons"),
    },
    disable = {
      ft = {},
      bt = {},
    },
    show_help = false,
    show_keys = false
  }
end
