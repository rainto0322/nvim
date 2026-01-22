--—————————— Completion Plugins ——————————
return {
	-- 🎄 Treesitter parsers
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = require("completion.1-treesitter"),
	},

	-- 📚 Nvim Language Server Protocol
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = { "BufReadPre", "BufNewFile", "BufWritePre" },
		dependencies = {
			"saghen/blink.cmp",
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim"
		},
		config = require("completion.2-lspconfig"),
	},

	-- 🤖 Autocompletion framework
	{
		"saghen/blink.cmp",
		lazy = true,
		version = "1.7",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saghen/blink.compat",
			"Wscats/html-snippets",
			"ribru17/blink-cmp-spell",
		},
		config = require("completion.3-blink-cmp")
	},

	-- 📦 Language Server Manager
	{
		"williamboman/mason.nvim",
		lazy = true,
		event = { "VimEnter", "BufReadPre", "BufNewFile" },
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"jay-babu/mason-null-ls.nvim",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = require("completion.4-mason")
	},

	-- 🧩 Formatter Code
	{
		"nvimtools/none-ls.nvim",
		lazy = true,
		event = { "CursorHold", "CursorHoldI" },
		config = require("completion.5-null-ls"),
		dependencies = {
			"nvim-lua/plenary.nvim",
			"jay-babu/mason-null-ls.nvim",
		},
	},

	-- 🐞 Debug Adapter Protocol
	{
		"mfussenegger/nvim-dap",
		lazy = true,
		cmd = {
			"DapSetLogLevel",
			"DapShowLog",
			"DapContinue",
			"DapToggleBreakpoint",
			"DapToggleRepl",
			"DapStepOver",
			"DapStepInto",
			"DapStepOut",
			"DapTerminate",
		},
		dependencies = {
			"jay-babu/mason-nvim-dap.nvim",
		}
	}
}
