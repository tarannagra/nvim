return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            require("kanagawa")
            vim.cmd.colorscheme("kanagawa")
        end
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {
            preset = "simple",
        },
        vim.diagnostic.config({ virtual_text = false })
    },
    {
        "folke/noice.nvim",
        opts = {
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
            },
            views = {
                cmdline_popup = {
                    position = {
                        row = "10%",
                        col = "50%"
                    }
                }
            },
            lsp = {
                hover = {
                    enabled = true
                }
            },
            presets = {
                inc_rename = true
            }
        }
    },
}
