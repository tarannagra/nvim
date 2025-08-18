return {
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",
        lazy = false,
        ft = "md", -- only enable plugin for markdown files
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function ()
            require("obsidian").setup({
                -- dir = "~/Documents/Obsidian/El Braino",
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
            })
            -- vim.opt.conceallevel = 1
        end
    }
}
