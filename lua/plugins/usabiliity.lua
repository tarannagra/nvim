return {
    {
        "aserowy/tmux.nvim",
        opts = {
            copy_sync = {
                enabled = true,
            },
        },
    },
    {
        "j-morano/buffer_manager.nvim",
        opts = {
            short_file_names = true,
        },
    },
    {
        'stevearc/aerial.nvim',
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    },
    {
        "smjonas/inc-rename.nvim",
        opts = {}
    },
    {
        "saghen/blink.indent",
        opts = {
            blocked = {
                buftypes = { include_defaults = true },
                filetypes = { include_defaults = true },
            },
            mappings = {
                border = "bottom",
                object_scope = "ii",
            }
        },
    },
    {
        "folke/twilight.nvim",
        opts = {},
    },
    {
        "folke/zen-mode.nvim",
        opts = {
            window = {
                backdrop = 1,
            },
        },
    },
    {
        "preservim/vim-pencil",
    },
}
