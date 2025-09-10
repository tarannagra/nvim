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
                    "basedpyright",
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
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')
            lspconfig.emmet_language_server.setup({
                capabilities = capabilities,
                filetypes = {"html", "jsp", "css", "javascript"}
            })
            lspconfig.html.setup({
                capabilities = capabilities,
                filetypes = {"html", "jsp"}
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.harper_ls.setup({
                capabilities = capabilities,
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
            lspconfig.jdtls.setup({
                capabilities = capabilities,
                filetypes = {
                    "java",
                    "jsp",
                    "jspx",
                },
                settings = {
                    java = {
                        contentProvider = { preferred = "jsp" }
                    }
                }
            })
            lspconfig.tinymist.setup({
                capabilities = capabilities,
                settings = {
                    formatterMode = "typstyle",
                    exportPdf = "onType",
                    semanticTokens = "disable",
                    outputPath = "$root/target/$dir/$name",
                },
            })
            -- maps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- for some reason, it duplicates the hovering thing
            vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
