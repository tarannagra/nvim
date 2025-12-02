return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "jdtls",
                    "tinymist",
                    -- "harper_ls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("bashls")
            vim.lsp.enable("fish_lsp")
            vim.lsp.enable("jsonls")
            vim.lsp.enable("lua_ls")
            -- vim.lsp.enable("jdtls")
            vim.lsp.enable("marksman")

            vim.lsp.config("tinymist", {
                settings = {
                    formatterMode = "typstyle",
                    exportPdf = "onType",
                    semanticTokens = "disable",
                    outputPath = "$root/target/$dir/$name",
                },
            })
            vim.lsp.enable("tinymist")

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
