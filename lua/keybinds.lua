local api = vim.api

-- Leader Key (similar to a super key)
vim.g.mapleader = " " -- off to space we go!!!
api.nvim_set_keymap("n", "<Leader>x", ":set wrap!<CR>", { noremap = true, silent = true })

-- FTerm
vim.keymap.set("n", "<C-b>", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<C-b>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

-- -- Telescope
-- vim.keymap.set(
-- 	"n",
-- 	"<Leader>ff",
-- 	":Telescope find_files<CR>",
-- 	{ silent = true, desc = "Toggle Telescope's find_files" }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"<Leader>gs",
-- 	":Telescope git_status<CR>",
-- 	{ silent = true, desc = "Toggle Telescope's git_status" }
-- )

-- Markdown
vim.keymap.set(
	"n",
	"<Leader>ch",
	"<CMD>lua require('markdown-toggle').checkbox()<CR>",
	{ silent = true, desc = "Toggle Obsidian checkboxes." }
)
vim.keymap.set("n", "<Leader>os", ":ObsidianSearch<CR>", { silent = true, desc = "Toggle Obsidian search." })

-- Splitting
vim.keymap.set("n", "<Leader>hs", ":split<CR>", { silent = true, noremap = true, desc = "Split horizontally." })
vim.keymap.set("n", "<Leader>vs", ":vsplit<CR>", { silent = true, noremap = true, desc = "Split vericatlly." })

-- Outline
vim.keymap.set("n", "<Leader>o", "<CMD>Outline<CR>", { desc = "Toggle Outline" })
vim.keymap.set("n", "<Leader>r", "<CMD>OutlineFocus<CR>", { desc = "Focus Outline" })

-- Snacks
--- Explorer
vim.keymap.set("n", "<A-b>", "<CMD>lua Snacks.explorer()<CR>", { noremap = true, silent = true })
--- LSP Conf
vim.keymap.set("n", "gd", "<CMD>lua Snacks.picker.lsp_declarations()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gi", "<CMD>lua Snacks.picker.diagnostics()<CR>", { noremap = true, silent = true })
--- File picker 
vim.keymap.set("n", "<Leader>fg", "<CMD>lua Snacks.picker.grep()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ff", "<CMD>lua Snacks.picker.files({hidden = true,})<CR>", { noremap = true, silent = true })
--- Dashboard
-- vim.keymap.set("n", "<Leader>H", "<CMD>lua Snacks.dashboard()<CR>", { noremap = true, silent = true })
