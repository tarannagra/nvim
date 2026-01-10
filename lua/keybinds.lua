-- Taran's Braino Keybinds
-- local api = vim.api

-- Information:
-- <leader> -> key to press before letters following that key
-- <C-?> -> Control + key. Example: <C-b> -> Ctrl + b
-- <A-?> -> Alt + key. Example: <A-o> -> Alt + o

-- Leader Key (similar to a super key)
vim.g.mapleader = " " -- off to space we go!!!

-- Generic mappings
vim.keymap.set("n", "<Leader>x", ":set wrap!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fa", vim.lsp.buf.format, { desc = "Format the buffer." })
vim.keymap.set("n", "<Leader>hs", ":split<CR>", { silent = true, noremap = true, desc = "Split buffer horizontally." })
vim.keymap.set("n", "<Leader>vs", ":vsplit<CR>", { silent = true, noremap = true, desc = "Split buffer vericatlly." })

-- Plugin specific mappings
vim.keymap.set("n", "<C-b>", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<C-b>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

-- Obsidian related
vim.keymap.set("n", "<A-o>", ":Obsidian search<CR>", { silent = true, desc = "Perform search on Obsidian vault" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory", silent = true })

-- Picker
vim.keymap.set("n", "gi", ":FzfLua lsp_document_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", ":FzfLua buffers<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fg", ":FzfLua live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ff", ":FzfLua files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>hh", ":FzfLua helptags<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fb", ":FzfLua buffers<CR>", { noremap = true, silent = true })
