return {
	{
		"m4xshen/autoclose.nvim",
        opts = {}
	},
    {
        "hedyhli/outline.nvim",
        config = function ()
            require("outline").setup({
                -- opts
            })
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function ()
            require("colorizer").setup({

            })
        end
    }
}
