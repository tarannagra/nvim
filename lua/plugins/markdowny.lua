return {
    {
        "antonk52/markdowny.nvim",
        config = function ()
            require("markdowny").setup({
                filetypes = { "markdown", "txt" },
            })
        end
    }
}
