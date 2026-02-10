return {
    {
        "numToStr/FTerm.nvim",
        version = "*",
        opts = {
            cmd = os.getenv("SHELL"), -- Should now be universal to work on windows and Unix
            auto_close = true,
        },
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {
            shade_terminals = false,
            start_in_insert = true,
            terminal_mappings = true,
            direction = "horizontal",
            shell = os.getenv("SHELL"),
        }
    }
}
