return {
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
    {
        "norcalli/nvim-colorizer.lua",
        config = function ()
            require("colorizer").setup({
                -- list of filetypes:
                "css",
                "scss",
                "html",
            })
        end
    },
    {
        "smjonas/inc-rename.nvim",
        opts = {},
    },
}
