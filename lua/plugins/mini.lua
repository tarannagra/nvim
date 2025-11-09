return {
    {
        "nvim-mini/mini.nvim",
        version = "*",
        config = function ()
            -- require('mini.surround').setup({})
            require("mini.comment").setup({})
            require("mini.jump").setup({})
            require("mini.pairs").setup({})
        end
    }
}
