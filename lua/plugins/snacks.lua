return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            dashboard = {
                enabled = true,
                preset = {
                    header = [[
██████╗ ██████╗  █████╗ ██╗███╗   ██╗ ██████╗
 ██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔═══██╗
 ██████╔╝██████╔╝███████║██║██╔██╗ ██║██║   ██║
 ██╔══██╗██╔══██╗██╔══██║██║██║╚██╗██║██║   ██║
 ██████╔╝██║  ██║██║  ██║██║██║ ╚████║╚██████╔╝
 ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ]],
                    keys = {
                        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                        { icon = " ", key = "g", desc = "Grep Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                        { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                        { icon = "󰠮 ", key = "o", desc = "Obsidian Search", action = ":Obsidian search" },
                        { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
            },
            indent = { enabled = true },
            input = { enabled = true },
            picker = {
                enabled = true,
                sources = {
                    explorer = {
                        focus = "list",
                        auto_close = false,
                        follow_file = true,
                        jump = { close = false },
                        layout = {
                            layout = { position = "right" },
                        },
                    },
                },
            },
            notifier = {
                enabled = true,
                timeout = 5000,
                style = "compact",
                top_down = false,
                width = { min = 50, max = 0.6 },
                height = { min = 1, max = 0.6 },
            },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
    },
}
