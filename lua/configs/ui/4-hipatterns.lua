-- https://github.com/nvim-mini/mini.hipatterns?tab=readme-ov-file#default-config
return function()
	require("mini.hipatterns").setup({
		highlighters = {
			fixme = { pattern = "()%sFIXME%s()", group = "MiniHipatternsFixme" },
			hack = { pattern = "()%sHACK%s()", group = "MiniHipatternsHack" },
			todo = { pattern = "()%sTODO%s()", group = "MiniHipatternsTodo" },
			get = { pattern = "()[.]get()", group = "MiniHipatternsMethod" },
			post = { pattern = "()[.]post()", group = "MiniHipatternsMethod" },
			put = { pattern = "()[.]put()", group = "MiniHipatternsMethod" },
			delete = { pattern = "()[.]delete()", group = "MiniHipatternsMethod" },
		},
	})
end
