-- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#commands
return function()
    require('render-markdown').setup({
        enable = true,
        ui = { enable = true },
        file_types = { 'markdown', 'vimwiki', },
    })
end
