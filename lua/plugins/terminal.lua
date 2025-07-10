return {
    {
        "numToStr/FTerm.nvim",
        version = "*",
        config = function()
            require("FTerm").setup({
                cmd = "fish"
            })
        end
    }
}
