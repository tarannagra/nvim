return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "echasnovski/mini.icons",
        },
        config = function()
            require("render-markdown").setup({
                file_types = { "markdown", },
                render_modes = { 'n', 'c', 't' },
                sign = { enabled = false, },
                anti_conceal = {
                    enabled = true,
                    ignore = {
                        code_background = true,
                        sign = true,
                    },
                    above = 0,
                    below = 0,
                },
                heading = {
                    enabled = true,
                    render_modes = false,
                    atx = true,
                    setext = true,
                    sign = false, -- remove the sign in number line
                    icons = { '󰎤 ', '󰎧 ', '󰎪 ', '󰎭 ', '󰎱 ', '󰎳 ' },
                },
                code = {
                    enabled = true,
                    sign = false,
                },

            })
        end
    }
}
