return {
    {
        "mason-org/mason.nvim",
        opts = {
            --
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
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
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
            })
            lspconfig.ltex.setup({
                language = "en-GB",
                capabilities = capabilities,
                filetypes = { "latex", "tex", "bib", "markdown", "gitcommit", "text" },
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })
            -- maps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- for some reason, it duplicates the hovering thing
            vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
        end
    },
    {
        "vigoux/ltex-ls.nvim",
        opts = {
            use_spellfile = false,
            window_border = 'single',
        }
    },
}
