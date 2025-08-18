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
    },
    {
        "filipdutescu/renamer.nvim",
        branch = "master",
        config = function ()
            require("renamer").setup({
            })
        end
    }
}
