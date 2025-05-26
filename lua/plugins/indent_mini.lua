return {
    {
        "nvimdev/indentmini.nvim",
        version = "*",
        config = function()
            require("indentmini").setup({
                only_current = true,
            })
        end


    }
}
