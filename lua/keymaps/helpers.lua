local help = {}

-- —————————— Buffer Control ——————————
help.DeleteBuffer = function()
	local buf = vim.api.nvim_get_current_buf()
	-- Check unsaved modifications
	if vim.bo[buf].modified then
		vim.api.nvim_echo({ { "File has unsaved changes. Save it first? [Write/Quit/Cancel] ", "ErrorMsg" } }, false, {})
		-- Monitor input keys
		local char = vim.fn.getchar()
		if type(char) == "number" then char = string.char(char):lower() end
		if char == "w" then
			vim.cmd("write")
		elseif char == "q" then
			vim.cmd("bdelete!")
		elseif char == "c" then
			vim.notify("Buffer deletion cancelled.")
			return
		end
	end
	vim.cmd("bdelete!")
end

help.DeleteBufferOther = function()
	local current_buf = vim.api.nvim_get_current_buf()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
			vim.cmd("bd! " .. buf)
		end
	end
end

-- —————————— Windows Control ——————————
---@params vsplit boolean
help.SplitWindow = function(vsplit)
	if vsplit then
		vim.cmd("vsplit")
	else
		vim.cmd("split")
	end
	vim.cmd("winc W | bprevious | winc w")
end

-- —————————— Telescope Search ——————————
help.FindWord = function()
	local search_text = ""
	local mode = vim.api.nvim_get_mode().mode

	if mode == "v" or mode == "V" then
		local temp_reg = vim.fn.getreg('"')
		vim.cmd('normal! "vy')
		search_text = vim.fn.getreg('"')
		vim.fn.setreg('"', temp_reg)
		search_text = vim.trim(search_text)
	else
		search_text = vim.fn.expand("<cword>")
	end

	require("telescope.builtin").grep_string({
		search = search_text,
		default_text = search_text or "",
	})
end

return help
