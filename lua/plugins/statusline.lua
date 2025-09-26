return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
                -- sections
                sections = {
                    -- left
                    lualine_a = {'mode'},
                    lualine_b = {"branch", "diff", "diagnostics"},
                    lualine_c = {"filename"},
                    -- right
                    lualine_x = {"fileformat", "filetype"},
                    lualine_y = {},
                    lualine_z = {"location"},
                },

            }
        },
    }
}
