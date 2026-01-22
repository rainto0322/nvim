return {
    -- 📄 Render Markdown
    {
        "MeanderingProgrammer/render-markdown.nvim",
        lazy = true,
        cmd = { "RenderMarkdown" },
        config = require("lang.1-markdown"),
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        },
    },
}
