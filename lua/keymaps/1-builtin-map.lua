--—————————— Builtin_Keymap ——————————
load_mapping({
	-- slient for which-key
	["n|g'"] = map("g'"):noremap():silent():desc("Jump To Mark"),
	["n|c"] = map("<nop>"):noremap():silent(),
	["n|j"] = map("gj"):noremap():silent(),
	["n|k"] = map("gk"):noremap():silent(),
	["nv|<Down>"] = map("gj"):noremap():silent(),
	["nv|<Up>"] = map("gk"):noremap():silent(),
	["nv|<C-Left>"] = map("b"):noremap():silent(),
	["nv|<C-Right>"] = map("w"):noremap():silent(),
	["n|<Tab>"] = map("w"):noremap():silent():desc("Next Word"),
	["v|<Tab>"] = map("w"):noremap():silent():desc("Next Word"),

	-- todo & undo
	["nv|<C-z>"] = map("u"):noremap():silent():desc("Undo Operation"),
	["nv|<C-y>"] = map("<C-r>"):noremap():silent():desc("Redo Operation"),
	["i|<C-z>"] = map("normal <Esc>ua"):noremap():silent():desc("Undo Operation"),
	["i|<C-y>"] = map("<Esc><C-r>"):noremap():silent():desc("Redo Operation"),

	-- Move
	["nvi|<C-k>"] = cmd("normal 3k"):noremap():silent():desc("Move up 3 line"),
	["nvi|<C-up>"] = cmd("normal 3k"):noremap():silent():desc("Move up 3 line"),
	["nvi|<C-j>"] = cmd("normal 3j"):noremap():silent():desc("Move down 3 line"),
	["nvi|<C-down>"] = cmd("normal 3j"):noremap():silent():desc("Move down 3 line"),

	-- Select
	["n|<C-a>"] = map("ggVG"):noremap():silent():desc("Select All"),
	["vi|<C-a>"] = map("<Esc>ggVG"):noremap():silent():desc("Select All"),
	-- select down
	["n|<S-Down>"] = map("vj"):noremap():silent():desc("Select Down line"),
	["v|<S-Down>"] = map("j"):noremap():silent():desc("Select Down line"),
	["i|<S-Down>"] = map("<Esc>vj"):noremap():silent():desc("Select Down Line"),
	["n|J"] = map("vj"):noremap():silent():desc("Select Down Line"),
	["v|<S-C-J>"] = map("vj"):noremap():silent():desc("Select Down Line"),
	["v|J"] = map("j"):noremap():silent():desc("Select Down Line"),
	-- select up
	["n|<S-Up>"] = map("vk"):noremap():silent():desc("Select Up Line"),
	["v|<S-Up>"] = map("k"):noremap():silent():desc("Select Up Line"),
	["i|<S-Up>"] = map("<Esc>vk"):noremap():silent():desc("Select Up Line"),
	["n|K"] = map("vk"):noremap():silent():desc("Select Up line"),
	["v|K"] = map("k"):noremap():silent():desc("Select Up line"),
	-- select left
	["n|<S-Left>"] = map("vb"):noremap():silent():desc("Select Left Word"),
	["v|<S-Left>"] = map("b"):noremap():silent():desc("Select Left Word"),
	["i|<S-Left>"] = map("<Esc>vb"):noremap():silent():desc("Select Left Wrod"),
	["n|H"] = map("vb"):noremap():silent():desc("Select Up line"),
	["v|H"] = map("b"):noremap():silent():desc("Select Up line"),
	-- select right
	["n|<S-Right>"] = map("ve"):noremap():silent():desc("Select Right Word"),
	["v|<S-Right>"] = map("e"):noremap():silent():desc("Select Right Word"),
	["i|<S-Right>"] = map("<Esc>ve"):noremap():silent():desc("Select Right Wrod"),
	["n|L"] = map("ve"):noremap():silent():desc("Select Right line"),
	["v|L"] = map("e"):noremap():silent():desc("Select Right line"),
})
