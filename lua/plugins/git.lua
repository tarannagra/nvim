return {
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            auto_attach = true,
            signs_staged_enable = true,
            signcolumn = true,
            current_line_blame = true
        }
    },
    {
        "tpope/vim-fugitive",
        -- config = function ()
        --     require("fugitive").setup()
        -- end
    },
}
