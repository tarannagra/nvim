return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            require("kanagawa")
            vim.cmd.colorscheme("kanagawa")
        end
    },
}
