return {
    {
        "antonk52/markdowny.nvim",
        config = function()
            require("markdowny").setup({
                filetypes = { "markdown", "txt" },
            })
        end
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
        ft = { 'markdown' },
        opts = {
            render_modes = { 'n', 'c', 't' },
            completions = {
                lsp = {
                    enabled = true,
                },
            },
            anti_conceal = {
                enabled = true,
                disabled_modes = false,
            },
            preset = "obsidian",
            win_options = {
                conceallevel = { default = vim.o.conceallevel, rendered = 1 },
                concealcursor = { default = vim.o.concealcursor, rendered = '' },
            },
            quote = {
                enabled = true,
                render_modes = false,
                repeat_linebreak = true,
            },
            code = {
                language_border = " ",
            },
            heading = {
                enabled = true,
                render_modes = false,
                sign = false,
                width = 'full',
                left_pad = 1,
            }
        },
    },
    -- {
    --     "OXY2DEV/markview.nvim",
    --     lazy = false,
    --     dependencies = {
    --         "saghen/blink.cmp"
    --     },
    --     opts = {
    --         typst = {
    --             enable = false,
    --             style = "simple",
    --         },
    --         markdown = {
    --             code_blocks = {
    --                 enable = true,
    --                 border_hl = "MarkviewCode",
    --                 info_hl = "MarkviewCodeInfo"
    --             },
    --         },
    --     }
    -- },
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",
        lazy = false,
        ft = "md",
        dependencies = {
            -- "nvim-lua/plenary.nvim",
            -- "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            workspaces = {
                {
                    name = "cortex",
                    path = "~/Documents/Obsidian/cortex"
                },
            },
            notes_subdir = "404_unsorted",
            new_notes_location = "notes_subdir",
            daily_notes = {
                folder = "003_personal/daily",
                template = "900_templates/daily_template.md",
            },
            completion = {
                blink = true,
            },
            picker = {
                name = "fzf-lua",
                note_mappings = {
                    new = "<C-X>",
                    insert_link = "<C-L>",
                },
            },
            attachments = {
                folder = "000_assets",
            },
            templates = {
                folder = "900_templates",
            },
            legacy_commands = false,
            -- workspaces = {
            --     {
            --         name = "El Braino",
            --         path = "~/Documents/Obsidian/El Braino"
            --     },
            -- },
            -- notes_subdir = "095 - Unsorted Files",
            -- new_notes_location = "notes_subdir",
            -- daily_notes = {
            --     folder = "004 - Personal/Daily Notes",
            --     template = "098 - Templates/Daily Template.md",
            -- },
            -- completion = {
            --     blink = true,
            -- },
            -- picker = {
            --     name = "fzf-lua",
            --     note_mappings = {
            --         new = "<C-X>",
            --         insert_link = "<C-L>",
            --     },
            -- },
            -- attachments = {
            --     img_folder = "000 - Attachments",
            -- },
            -- templates = {
            --     folder = "098 - Templates",
            -- },
        },
    },
}
