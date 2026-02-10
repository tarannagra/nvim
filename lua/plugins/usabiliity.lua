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
}
