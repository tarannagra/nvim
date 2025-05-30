
-- Begone mouse!
vim.opt.mouse = ""


-- Clippy
vim.opt.clipboard = 'unnamedplus'

-- Spaces...not tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.conceallevel = 1

-- Disable nvim's built in file tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
