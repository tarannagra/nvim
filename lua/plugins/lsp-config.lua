return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("bashls")
            vim.lsp.enable("fish_lsp")
            vim.lsp.enable("jsonls")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("marksman")
            vim.lsp.enable("nixd")

            vim.lsp.config("tinymist", {
                settings = {
                    formatterMode = "typstyle",
                    exportPdf = "onType",
                    semanticTokens = "disable",
                    outputPath = "$root/target/$dir/$name",
                },
            })
            vim.lsp.enable("tinymist")
            vim.lsp.enable("pyright")
            -- vim.lsp.enable("ruff")

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
