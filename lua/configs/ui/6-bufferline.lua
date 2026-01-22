-- https://github.com/akinsho/bufferline.nvim?tab=readme-ov-file#configuration
-- :h bufferline-configuration
return function()
  require("bufferline").setup {
    options = {
      tab_size = 20,
      auto_hide = true,
      always_show_bufferline = false,
      auto_toggle_bufferline = false,
      max_name_length = 15,
      max_prefix_length = 8,
      -- numbers = "ordinal",
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        return "(" .. count .. ")"
      end,
      -- Hover events (neovim version >= 0.8+)
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' }
      },

      --—————————— 📌 icon configuration ——————————
      separator_style = { left = '', right = '' },
      close_icon = icons.ui.Close,
      modified_icon = icons.ui.Modified,
      left_trunc_marker = icons.ui.Left,
      right_trunc_marker = icons.ui.Right,
      buffer_close_icon = icons.ui.Close,
      indicator = { style = 'none' },

      --—————————— ⚙️ icon controls ——————————
      show_buffer_icons = false,
      show_buffer_close_icons = true,
      show_close_icon = false,
      color_icons = false,
      show_buffer_path = false,

      --—————————— 🏷 groups configuration ——————————
      groups = {
        options = { toggle_hidden_on_enter = true },
        items = {
          require('bufferline.groups').builtin.ungrouped,
          {
            name = " Mark",
            matcher = function(buf)
              local buf_info = vim.fn.getbufinfo(buf.id)[1]
              local name = buf_info.name or ""
              return name:match("%.md$")
                  or name:match("%.txt$")
            end,
          }
        }
      }
    },
  }

  --  Automatically hide when there is single file
  local group = vim.api.nvim_create_augroup("BufferlineAutoHide", { clear = true })
  vim.api.nvim_create_autocmd({ "BufEnter", "BufDelete" }, {
    group = group,
    callback = function()
      vim.opt.showtabline = #vim.fn.getbufinfo({ buflisted = 1 }) > 1 and 2 or 0
    end
  })
end
