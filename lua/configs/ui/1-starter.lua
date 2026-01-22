-- https://github.com/nvim-mini/mini.starter?tab=readme-ov-file#default-config
return function()
	local starter = require("mini.starter")

	local config = {
		header = settings["logo"],
		footer = function()
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			return "loaded 󰂖 " .. stats.loaded .. "/" .. stats.count ..
				" plugins in " .. ms .. "ms"
		end,
		items = nil,
	}

	starter.setup(config)

	-- ♻️ Reflash ministarter
	vim.api.nvim_create_autocmd("User", {
		pattern = "MiniStarterOpened",
		once = true,
		callback = function(event)
			require("mini.starter").setup(config)
			if vim.bo[event.buf].filetype == "ministarter" then
				pcall(starter.refresh)
			end
			-- Delete starter default keymap
			vim.keymap.del('n', '<C-n>', { buffer = true })
			vim.keymap.del('n', '<C-p>', { buffer = true })
		end
	})
end
