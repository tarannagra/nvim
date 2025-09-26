return {
    {
        "numToStr/FTerm.nvim",
        version = "*",
        opts = {
            cmd = os.getenv("SHELL"), -- Should now be universal to work on windows and Unix
            auto_close = true,
        },
    }
}
