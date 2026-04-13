return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        opts = {
            keymap = {
                builtin = {
                    ["<C-d>"] = "preview-page-down",
                    ["<C-u>"] = "preview-page-up",
                },
            },
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            image = {
                resolve = function (path, src)
                    local api = require("obsidian.api")
                    if api.path_is_note(path) then
                        return api.resolve_attachment_path(src)
                    end
                end,
            },
        }
    }
}
