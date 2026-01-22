load_mapping({
    -- delete backword
    ["i|<C-BS>"] = map("<C-w>"):noremap():silent(),
    -- Save file
    ["nvi|<C-s>"] = cmd("write"):noremap():silent():desc("Save Current file"),
    -- Comment
    ["nvi|<C-/>"] = cmd("normal gcc"):noremap():silent():desc("Toggle Line Comment"),

    -- Copy & Cur & Paste
    ["v|<C-c>"] = map("\"+ygv<Esc>"):noremap():silent():desc("Copy Select"),
    ["v|<C-x>"] = map("\"+dgv<Esc>"):noremap():silent():desc("Cut Select"),
    ["n|<C-v>"] = map("\"+pi"):noremap():silent():desc("Paste Text"),
    ["i|<C-v>"] = map("<C-r>+"):noremap():silent():desc("Paste Text"),
    ["v|<C-v>"] = map('"_d"+P'):noremap():silent():desc("Replace Text"),

    -- ToggleMod
    ["ni|aa"] = map("<Esc>viw"):noremap():silent():desc("Toggle to visual Select block"),
    -- Replace
    -- line break \r
    ["n|<C-h>"] = map(":%s/<C-r><C-w>//g<Left><Left>"):noremap():desc("Replace In Cursor Word"),
    ["v|<C-h>"] = map(":<C-u>%s/\\%V<C-r><C-w>//g<Left><Left>"):noremap():desc("Replace In Select"),
    -- mini.splitjoin
    ["nvi|gs"] = cmd("lua require('mini.splitjoin').toggle()"):noremap():silent():desc("Toggle Arguments"),
    -- command
    ["c|<C-p>"] = map("<C-R>=expand('%:p:h') . '/'  <CR>"):noremap():desc("Complete Path Of Current File"),

})
