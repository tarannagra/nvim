local api = vim.api


-- Leader Key (similar to a super key)
vim.g.mapleader = " "
-- api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
api.nvim_set_keymap("n", "<Leader>x", ":set wrap!<CR>", {noremap = true, silent = true})

-- coc.nvim specific
api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>": "\\<Tab>"', { expr = true, noremap = true })
api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>": "\\<S-Tab>"', { expr = true, noremap = true })
api.nvim_set_keymap("i", "<CR>", 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { expr = true, noremap = true })
api.nvim_set_keymap("i", "<C-Space>", 'coc#refresh()', { expr = true, noremap = true })

-- nvim-tree specific
-- api.nvim_set_keymap("n", "<Leader>e", ':NvimTreeToggle<CR>', { silent = true, noremap = true })
-- api.nvim_set_keymap("n", "<Leader>f", ':NvimTreeFocus<CR>', { silent = true, noremap = true })

--- from https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#smart-nvim-tree-toggling
local nvimtree_determine_mode = function ()
    local nvimTree = require("nvim-tree.api")
    local current_buffer = api.nvim_get_current_buf()
    local current_buffer_ft = api.nvim_get_option_value("filetype", {buf = current_buffer})
    if current_buffer_ft == "NvimTree" then
        nvimTree.tree.toggle()
    else
        nvimTree.tree.focus()
    end
end

vim.keymap.set("n", "<A-b>", nvimtree_determine_mode, {noremap = true, silent = true})

-- FTerm
vim.keymap.set("n", "<C-b>", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<C-b>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", {silent = true, desc = "Toggle Telescope's find_files"})
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>", {silent = true, desc = "Toggle Telescope's live_grep"})
vim.keymap.set("n", "<Leader>gs", ":Telescope git_status<CR>", {silent = true, desc = "Toggle Telescope's git_status"})

-- Obsidian
vim.keymap.set("n", "<Leader>ch", "<CMD>lua require('markdown-toggle').checkbox()<CR>", {silent= true, desc = "Toggle Obsidian checkboxes."})
