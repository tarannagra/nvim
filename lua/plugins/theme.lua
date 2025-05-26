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
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function() 
            require("catppuccin").setup({
                flavour = "mocha",
                integrations = {
                    coc_nvim = true,
                    native_lsp = { enabled = true },
                    treesitter = true,
                },
            })
        end
    }
}