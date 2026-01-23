return function()
	local p = require("rose-pine.palette")

	-- use :Inspect
	require("rose-pine").setup({
		highlight_groups = {
			Title = { bg = p.base, fg = p.base },
			WinBar = { bg = p.base, fg = p.base },
			WinBarNC = { bg = p.base, fg = p.base },
			TabLineFill = { bg = p.base },
			TabLineSel = { bg = p.base, fg = p.base },
			Search = { fg = "NONE", bg = p.pine, blend = 15 },
			CurSearch = { fg = "NONE", bg = p.love, blend = 30 },
			CursorLine = { bg = p.surface },
			FloatBorder = { bg = p.base },
			healthSectionDelim = { fg = p.iris },
			DiagnosticInfo = { fg = p.leaf },
			StatusLineTerm = { bg = p.leaf, fg = p.base, bold = true, blend = 50 },
			StatusLineTermNC = { bg = p.love, fg = p.base },

			-- toml
			tomlTable = { fg = p.love },
			tomlTableArray = { fg = p.iris },
			-- html
			htmlTitle = { bg = "NONE", fg = p.love },
			htmlTagName = { fg = p.iris },

			--—————————— mini.hipatterns ——————————--
			MiniHipatternsMethod = { bg = p.rose, fg = p.base },

			--—————————— lazy.nvim ——————————--
			LazyNormal = { bg = p.base },
			LazyBold = { bg = p.iris, fg = p.base },
			LazyButton = { link = "CursorLine" },
			LazyButtonActive = { bg = p.iris, fg = p.base },
			LazyH1 = { bg = p.iris, fg = p.base },
			LazyH2 = { fg = p.iris },

			--—————————— mason.nvim ——————————--
			MasonHeader = { fg = p.highlight_med },
			MasonHeaderSecondary = { link = "MasonHeader" },
			MasonMutedBlock = { link = "CursorLine" },
			MasonHighlightBlockBold = { bg = p.iris, fg = p.base },
			MasonHighlightBlockBoldSecondary = { link = "MasonHighlightBlockBold" },
			MasonHeading = { fg = p.iris },

			--—————————— mini.starter (:h mini.starter /highlight ) ——————————--
			MiniStarterCurrent = { fg = p.iris, bold = true, italic = true },
			MiniStarterHeader = { bg = p.base, fg = p.iris, bold = true, italic = true },
			MiniStarterFooter = { fg = p.iris },
			MiniStarterItem = { fg = p.subtle },
			MiniStarterItemBullet = { fg = p.highlight_med },
			MiniStarterItemPrefix = { fg = "NONE" },
			MiniStarterSection = { fg = p.iris, bold = true },
			MiniStarterQuery = { fg = p.love, bold = false, italic = true },

			--—————————— bufferline.nvim ( :h bufferline-highlights ) ——————————--
			-- base
			BufferLineFill = { bg = p.base },
			BufferLineBackground = { bg = p.base },
			-- buffer
			BufferLineBuffer = { bg = p.base, fg = p.iris },
			BufferLineBufferSelected = { bg = p.surface, fg = p.iris, bold = true },
			BufferLineBufferVisible = { bg = p.base, fg = p.subtle },
			BufferLineInfo = { link = "BufferLineBuffer" },
			BufferLineInfoSelected = { link = "BufferLineBufferSelected" },
			BufferLineInfoVisible = { link = "BufferLineBufferVisible" },
			BufferLineHint = { link = "BufferLineBuffer" },
			BufferLineHintSelected = { link = "BufferLineBufferSelected" },
			BufferLineHintVisible = { link = "BufferLineBufferVisible" },
			BufferLineWarning = { link = "BufferLineBuffer" },
			BufferLineWarningSelected = { link = "BufferLineBufferSelected" },
			BufferLineWarningVisible = { link = "BufferLineBufferVisible" },
			BufferLineError = { link = "BufferLineBuffer" },
			BufferLineErrorSelected = { link = "BufferLineBufferSelected" },
			BufferLineErrorVisible = { link = "BufferLineBufferVisible" },
			-- diagnostic
			BufferLineInfoDiagnostic = { bg = p.base, fg = p.leaf },
			BufferLineInfoDiagnosticSelected = { bg = p.surface, fg = p.leaf },
			BufferLineInfoDiagnosticVisible = { bg = p.base, fg = p.leaf },
			BufferLineHintDiagnostic = { bg = p.base, fg = p.iris },
			BufferLineHintDiagnosticSelected = { bg = p.surface, fg = p.iris },
			BufferLineHintDiagnosticVisible = { bg = p.base, fg = p.iris },
			BufferLineWarningDiagnostic = { bg = p.base, fg = p.rose },
			BufferLineWarningDiagnosticSelected = { bg = p.surface, fg = p.rose },
			BufferLineWarningDiagnosticVisible = { bg = p.base, fg = p.rose },
			BufferLineErrorDiagnostic = { bg = p.base, fg = p.love },
			BufferLineErrorDiagnosticSelected = { bg = p.surface, fg = p.love },
			BufferLineErrorDiagnosticVisible = { bg = p.base, fg = p.love },
			-- same name file path
			BufferLineDuplicate = { bg = p.base, fg = p.highlight_high },
			BufferLineDuplicateSelected = { bg = p.surface, fg = p.highlight_high },
			BufferLineDuplicateVisible = { bg = p.base, fg = p.overlay },
			-- numbers
			BufferLineNumbers = { link = "BufferLineBuffer" },
			BufferLineNumbersSelected = { link = "BufferLineBufferSelected" },
			BufferLineNumbersVisible = { link = "BufferLineBufferVisible" },
			-- buffer not modified
			BufferLineModified = { link = "BufferLineBuffer" },
			BufferLineModifiedSelected = { link = "BufferLineBufferSelected" },
			BufferLineModifiedVisible = { link = "BufferLineBufferVisible" },
			-- tab
			BufferLineTab = { link = "BufferLineBuffer" },
			BufferLineTabSelected = { link = "BufferLineBufferSelected" },
			BufferLineTabVisible = { link = "BufferLineBufferVisible" },
			BufferLineSeparator = { bg = p.base, fg = p.base },
			BufferLineSeparatorSelected = { link = "BufferLineSeparator" },
			BufferLineSeparatorVisible = { link = "BufferLineSeparator" },
			-- close button
			BufferLineTabClose = { bg = p.base },
			BufferLineCloseButton = { link = "BufferLineBuffer" },
			BufferLineCloseButtonSelected = { link = "BufferLineBufferSelected" },
			BufferLineCloseButtonVisible = { link = "BufferLineBufferVisible" },
			-- group items
			BufferLineGroupLabel = { bg = p.iris, fg = p.base },
			BufferLineGroupSeparator = { bg = p.base, fg = p.iris },
			-- left_trunc_marker & right_trunc_marker
			BufferLineTruncMarker = { bg = p.base, fg = p.iris },

			--—————————— nvim-tree ——————————--
			NormalFloat = { bg = p.base },
			NvimTreeFolderName = { fg = p.iris },
			NvimTreeOpenedFolderIcon = { fg = p.love },

			--—————————— mini.Iindentscope ——————————--
			MiniIndentscopeSymbol = { fg = p.love },
			MiniIndentscopeSymbolOff = { fg = p.love },

			--—————————— mini.hipatterns ——————————--
			MiniHipatternsFixme = { bg = p.love },
			MiniHipatternsHack = { bg = p.love },
			MiniHipatternsTodo = { bg = p.love },
			MiniHipatternsNote = { bg = p.love },

			--—————————— mini.cursorword ——————————--
			MiniCursorword = { underline = true },
			MiniCursorwordCurrent = { link = "MiniCursorword" },

			--—————————— which-key ——————————--
			-- https://github.com/folke/which-key.nvim?tab=readme-ov-file#-colors
			WhichKey = { bg = p.base },
			WhichKeyBorder = { bg = p.base },
			WhichKeyTitle = { bg = p.base, fg = p.iris },
			WhichKeyIconOrange = { bg = p.iris },
			WhichKeyDesc = { fg = p.iris },
			WhichKeyGroup = { fg = p.iris },

			--—————————— telescope.nvim ——————————--
			TelescopeTitle = { fg = p.iris },
			TelescopeBorder = { link = "FloatBorder" },
			TelescopeNormal = { bg = p.base, fg = p.subtle },
			TelescopePreviewNormal = { link = "TelescopeNormal" },
			TelescopePromptNormal = { link = "TelescopeNormal" },
			TelescopeResultsNormal = { link = "TelescopeNormal" },
			TelescopeSelection = { fg = "NONE" },
			TelescopeMatching = { bg = p.subtle, fg = p.gold, blend = 20, italic = true, bold = true },

			--—————————— flash.nvim ——————————--
			FlashMatch = { fg = p.iris },
			FlashLabel = { bg = p.base, fg = p.love, bold = true, underline = true },
			FlashPromptIcon = { fg = p.iris },

			--—————————— multicursor.nvim ——————————--
			MultiCursorCursor = { bg = p.iris, fg = p.base },
			MultiCursorVisual = { bg = p.iris, fg = p.base, underline = true, nocombine = true },
			MultiCursorSign = { fg = p.base },
			MultiCursorMatchPreview = { fg = p.love },
			MultiCursorDisabledCursor = { reverse = false },
			MultiCursorDisabledVisual = { link = "Visual" },
			MultiCursorDisabledSign = {},

			--—————————— blink.cmp ——————————--
			BlinkCmpMenu = { bg = p.base },
			BlinkCmpMenuBorder = { bg = p.base, fg = p.subtle },
			BlinkCmpDoc = { bg = p.base },
			BlinkCmpDocSeparator = { bg = p.base, fg = p.subtle },
			BlinkCmpDocBorder = { bg = p.base },
			BlinkCmpMenuSelection = { fg = "NONE", bg = p.surface },
			BlinkCmpLabel = { fg = "NONE" },
			BlinkCmpLabelDeprecated = { bold = true, underline = true },
			BlinkCmpLabelMatch = { fg = p.leaf, italic = true, bold = true },
		},
	})
end
