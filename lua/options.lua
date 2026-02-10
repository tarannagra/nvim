-- Begone mouse!
vim.o.mouse = ""
vim.o.clipboard = "unnamedplus"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.swapfile = false

-- UI
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.showmode = false
vim.o.wrap = false
vim.o.conceallevel = 0
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"

-- Disable Neovim's built-in file tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({ virtual_text = false })

vim.api.nvim_create_autocmd("OptionSet",{
    pattern = "background",
    callback = function()
	if vim.o.background == "dark" then
	    vim.cmd("colorscheme kanagawa")
	else
	    vim.cmd("colorscheme kanagawa-paper-canvas")
	end
    end,
})
