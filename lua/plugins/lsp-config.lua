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
                    "harper_ls"
                }
            })
        end
    },
    {
        "nvim-java/nvim-java",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- vim.lsp.config("ruff", {
            --     init_options = {
            --         settings = {}
            --     }
            -- })
            -- vim.lsp.enable("ruff")
            vim.lsp.enable("bashls")
            vim.lsp.enable("fish_lsp")
            vim.lsp.enable("emmet_language_server")
            vim.lsp.enable("html")
            vim.lsp.enable("jsonls")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("cssls")
            vim.lsp.enable("jdtls")

            vim.lsp.config("harper_ls", {
                settings = {
                    ["harper_ls"] = {
                        linters = {
                            SpellCheck = true,
                            SpelledNumbers = false,
                            AnA = true,
                            SentenceCapitalization = true,
                            UnclosedQuotes = true,
                            WrongQuotes = false,
                            LongSentences = true,
                            RepeatedWords = true,
                            Spaces = true,
                            Matcher = true,
                            CorrectNumberSuffix = true,
                        },
                        dialect = "British"
                    },
                }

            })

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
