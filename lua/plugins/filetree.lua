return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        lazy = false,
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
                position = "right",
                width = 34,
                mappings = {
                    ["l"] = {
                        "toggle_node",
                        nowait = false,
                    },
                    ["P"] = {
                        config = {
                            use_float = true,
                            use_image_nvim = false,
                        }
                    },
                    ["a"] = {
                        "add",
                        config = {
                            show_path = "none",
                        },
                    },
                    ["q"] = "close_window",
                    ["d"] = "delete",
                    ["r"] = "rename",
                    ["y"] = "copy_to_clipboard",
                    ["p"] = "paste_from_clipboard",
                }
            }
        }
    }
}
