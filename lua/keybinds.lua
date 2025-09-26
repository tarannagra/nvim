local api = vim.api

-- Leader Key (similar to a super key)
vim.g.mapleader = " " -- off to space we go!!!

api.nvim_set_keymap("n", "<Leader>x", ":set wrap!<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<Leader>R", "<CMD>source %<CR>", { noremap = true, silent = true }) -- reload of config

vim.keymap.set("n", "<C-b>", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<C-b>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("n", "<Leader>fa", vim.lsp.buf.format, {})

vim.keymap.set(
	"n",
	"<Leader>ch",
	"<CMD>lua require('markdown-toggle').checkbox()<CR>",
	{ silent = true, desc = "Toggle Obsidian checkboxes." }
)
vim.keymap.set("n", "<Leader>os", ":Obsidian search<CR>", { silent = true, desc = "Toggle Obsidian search." })
vim.keymap.set("n", "<Leader>hs", ":split<CR>", { silent = true, noremap = true, desc = "Split horizontally." })
vim.keymap.set("n", "<Leader>vs", ":vsplit<CR>", { silent = true, noremap = true, desc = "Split vericatlly." })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory", silent = true })

-- Snacks
vim.keymap.set("n", "gd", "<CMD>lua Snacks.picker.lsp_declarations()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gi", "<CMD>lua Snacks.picker.diagnostics()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fg", "<CMD>lua Snacks.picker.grep()<CR>", { noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<Leader>ff",
	"<CMD>lua Snacks.picker.files({hidden = true,})<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set("n", "<Leader>H", "<CMD>lua Snacks.dashboard()<CR>", { noremap = true, silent = true })
