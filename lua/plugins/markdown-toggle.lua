return {
    {
        "roodolv/markdown-toggle.nvim",
        config = function ()
            require("markdown-toggle").setup({
                use_default_keymaps = true,
                filetypes = { "markdown", },
                list_before_box = false,
            })
        end
    }
}
