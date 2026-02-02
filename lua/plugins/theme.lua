return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
                        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                        PmenuSbar = { bg = theme.ui.bg_m1 },
                        PmenuThumb = { bg = "#C0A36E" },
                        -- BlinkCmpMenuBorder = { fg = "", bg = "" },

                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },
                        -- LineNr = { fg = "#C0A36E", bg = "NONE" },
                        CursorLineNr = { fg = colors.palette.sakuraPink, bg = "NONE" },
                    }
                end,
            })
        end,
    },
    {
        "thesimonho/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {},
        opts = {
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
                -- sections
                sections = {
                    -- left
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    -- right
                    lualine_x = { "fileformat", "filetype" },
                    lualine_y = {},
                    lualine_z = { "location" },
                },
            },
        },
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {
            preset = "powerline",
            multilines = {
                enabled = true,
            },
        },
        vim.diagnostic.config({ virtual_text = false }),
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
                        col = "50%",
                    },
                },
            },
            lsp = {
                hover = {
                    enabled = true,
                },
            },
            presets = {
                inc_rename = true,
            },
        },
    },
    {
        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- If you want devicons
            "stevearc/resession.nvim"
        },
        opts = {
            -- super verbose
            show_if_buffers_are_at_least = 1,
            buffers = {
                filter_valid = false,
                filter_visible = false,
                focus_on_delete = 'next',
                new_buffers_position = 'last',
                delete_on_right_click = false, -- no mouse baby!
            },
            mappings = {
                cycle_prev_next = true,
                disable_mouse = true, -- no mouse baby!
            },
        },
    },
    {
        "goolord/alpha-nvim",
        -- event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            local upper_logo = {
                "┏┓┏┓┏┓┳┓┏┓┓┏  ┏┳┓┓┏┏┓  ┏┓┏┓┓ ┏┓┏┓┏┓┓┏",
                "┗┓┣ ┣┫┣┫┃ ┣┫   ┃ ┣┫┣   ┃┓┣┫┃ ┣┫ ┃┃ ┗┫",
                "┗┛┗┛┛┗┛┗┗┛┛┗   ┻ ┛┗┗┛  ┗┛┛┗┗┛┛┗┗┛┗┛┗┛",
            }

            local lower_local = {
                " ┏┓       ┓    ┓     ┏┓  ┓       ",
                " ┗┓┏┓┏┓┏┓┏┣┓  ╋┣┓┏┓  ┃┓┏┓┃┏┓┓┏┓┏ ",
                " ┗┛┗ ┗┻┛ ┗┛┗  ┗┛┗┗   ┗┛┗┻┗┗┻┛┗┗┫ ",
                "                               ┛ ",
            }

            dashboard.section.header.val = upper_logo
            -- dashboard.section.header.val = {
            --     " ┏┓       ┓    ┓     ┏┓  ┓       ",
            --     " ┗┓┏┓┏┓┏┓┏┣┓  ╋┣┓┏┓  ┃┓┏┓┃┏┓┓┏┓┏ ",
            --     " ┗┛┗ ┗┻┛ ┗┛┗  ┗┛┗┗   ┗┛┗┻┗┗┻┛┗┗┫ ",
            --     "                               ┛ ",
            -- }

            dashboard.section.buttons.val = {
                dashboard.button("e", "󰈔  > New File", ":ene <BAR> startinsert <CR>"),
                dashboard.button("ff", "󰺄  > Search", ":FzfLua files<CR>"),
                dashboard.button("os", "  > Obsidian search", ":Obsidian search<CR>"),
                dashboard.button("co", "󰒓  > Tweak your config", ":cd $HOME/.config/nvim | FzfLua files<CR>"),
                dashboard.button("q", "󰩈  > Quit", ":qa<CR>")
            }

            dashboard.section.footer.val = {
                "~ Curate the world you want, not what they want."
            }
            alpha.setup(dashboard.opts)
        end
    },
}
