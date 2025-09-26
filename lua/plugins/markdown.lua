return {
    {
        "antonk52/markdowny.nvim",
        config = function ()
            require("markdowny").setup({
                filetypes = { "markdown", "txt" },
            })
        end
    },
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
    },
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",
        lazy = false,
        ft = "md",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            workspaces = {
                {
                    name = "El Braino",
                    path = "~/Documents/Obsidian/El Braino"
                },
            },
            notes_subdir = "095 - Unsorted Files",
            new_notes_location = "notes_subdir",
            daily_notes = {
                folder = "004 - Personal/Daily Notes",
                template = "098 - Templates/Daily Template.md",
            },
            completion = {
                nvim_cmp = true,
            },
            picker = {
                name = "telescope.nvim",
                note_mappings = {
                    new = "<C-X>",
                    insert_link = "<C-L>",
                },
            },
            attachments = {
                img_folder = "000 - Attachments",
            },
            templates = {
                folder = "098 - Templates",
            },
            legacy_commands = false,
        },
    }
}
