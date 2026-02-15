local global = require("core.global")

-- Set the leader key
vim.g.mapleader = " "

-- plugin options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set diagnostic icons
local diag = icons.diagnostics
vim.diagnostic.config({
    -- virtual_text = {
    --     source = "if_many", -- 显示错误来源 ( if_many | always )
    --     prefix = "",        -- 自定义前缀符号
    --     format = function(diagnostic)
    --         return string.format(
    --             "[%s] %s",
    --             diagnostic.source or "",
    --             diagnostic.message:gsub("\n", " ")
    --         )
    --     end,
    -- },
    float = {
        style = "minimal",
        border = settings["border"],
        source = "always",
        focusable = false
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = diag.error,
            [vim.diagnostic.severity.WARN] = diag.warning,
            [vim.diagnostic.severity.INFO] = diag.info,
            [vim.diagnostic.severity.HINT] = diag.hint,
        },
    },
})

-- Set nvim options
local Options = {
    -- line number
    number = true,
    relativenumber = false,

    -- highlight current line & column
    cursorcolumn = false,
    cursorline = true,

    -- tabs & indentation
    tabstop = 4,        -- tab显示宽度
    shiftwidth = 4,     -- 自动缩进宽度
    softtabstop = 4,    -- 编辑时 Tab 宽度
    shiftround = true,  -- 缩进时对齐到整数倍
    autoindent = true,  -- 自动缩进
    smartindent = true, -- 智能缩进
    expandtab = false,  -- tab 转空格

    -- search
    ignorecase = true, -- 忽略大小写
    smartcase = true,  -- 智能大小写
    incsearch = true,  -- 实时搜索
    -- hlsearch = true,       -- 高亮搜索结果
    -- inccommand = "nosplit", -- 实时预览替换

    -- 标签栏显示方式
    -- 0 永不显示 | 1 tab > 2 | 2 一直显示
    showtabline = 1,
    showcmd = false,  -- 显示命令行
    showmode = false, -- 显示模式指示器

    -- appearance
    cmdheight = 1,     -- 0, 1, 2
    cmdwinheight = 5,
    scrolloff = 5,     -- 光标上下保留行数
    sidescrolloff = 8, -- 左右各保留列 | 999 始终居中
    linespace = 2,     -- 行间距
    laststatus = 3,    -- 状态栏显示方式
    list = true,       -- 显示不可见字符

    -- chars
    showbreak = "", -- 拆行显示符号
    listchars = "tab:  ,nbsp: ,trail:·,extends:→,precedes:←",
    fillchars = "eob: ",

    -- split
    splitbelow = true,    -- 新窗口在打打开
    splitright = true,    -- 新窗口在右侧打开
    splitkeep = "screen", -- 分割时保持屏幕位置
    startofline = false,  -- 命令移动时光标到行首

    -- wrap
    wrap = true,
    wrapscan = true,
    linebreak = true, -- 智能断行
    breakat = [[\ \ ;:,。!?]],
    backspace = "indent,eol,start",
    breakindentopt = "shift:2,min:20",
    whichwrap = "h,l,<,>,[,],~",

    -- Key mapping time
    timeout = true,
    timeoutlen = 300,
    ttimeout = true,
    ttimeoutlen = 0,

    -- Complete the menu: Sources & Options
    complete = ".,w,b,k,kspell",
    completeopt = "fuzzy,menuone,noselect,popup",
    -- mouse
    -- extend | popup
    mousemodel = "popup",
    mousemoveevent = true,
    -- others
    clipboard = "unnamedplus",
    magic = true,
    termguicolors = true, -- 启用 24 位真彩色
    -- 跳转模式 "stack" | ""
    -- <C-o> <C-i>
    jumpoptions = "stack",
    -- diagnostic shows waiting time
    updatetime = 500,

    -- file path
    spellfile = global.vim_path .. "/spell/en.utf-8.add",
    backup = false,
    backupdir = global.cache_dir .. "/backup/,.",
    swapfile = false,
    directory = global.cache_dir .. "/swap/",
    undofile = true,
    undodir = global.cache_dir .. "/undo/",

}

for name, value in pairs(Options) do
    vim.api.nvim_set_option_value(name, value, {})
end
