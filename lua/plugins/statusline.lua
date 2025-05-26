return {
    {
        "sontungexpt/sttusline",
        branch = "table_version",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        event = { "BufEnter" },
        config = function (_, opts)
            require("sttusline").setup({
                on_attach = function(create_update_group) end,
                statusline_color = "StatusLine",
                disabled = {
                    filetypes = {
                        "NvimTree",
                        "lazy"
                    }
                },
                components = {
                    "filename",
                    "git-branch",
                    "git-diff",
                    "%=",
                    "diagnostics",
                    -- "datetime"
                }

            })
        end,
    }
}
