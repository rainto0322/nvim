-- lua/blink/lsp/settings/lua_ls.lua
return {
    settings = {
        Lua = {
            runtime = {
                -- 告诉 lua_ls 你使用的 Lua 版本
                version = 'LuaJIT',
                -- 设置 Lua 的路径
                path = {
                    '?.lua',
                    '?/init.lua',
                    vim.fn.expand('~/.luarocks/share/lua/5.1/?.lua'),
                    vim.fn.expand('~/.luarocks/share/lua/5.1/?/init.lua')
                }
            },
            diagnostics = {
                -- 启用全局变量诊断
                globals = { 'vim', 'settings' } -- 添加你的全局变量
            },
            workspace = {
                -- 让 lua_ls 识别 Neovim 的运行时文件
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                    [vim.fn.stdpath('config') .. '/lua'] = true -- 识别你的配置
                },
                -- 不提示 "从外部文件加载" 的警告
                checkThirdParty = false
            },
            telemetry = {
                enable = false
            },
            hint = {
                enable = true
            }
        }
    },
    on_attach = function(client, bufnr)

    end
}
