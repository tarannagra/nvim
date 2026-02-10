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
-- vim.keymap.set("n", "<C-b>", "<CMD>lua require('FTerm').toggle()<CR>")
-- vim.keymap.set("t", "<C-b>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")


-- Obsidian related
vim.keymap.set("n", "<A-o>", ":Obsidian search<CR>", { silent = true, desc = "Perform search on Obsidian vault" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory", silent = true })

-- Buffer Manager
vim.keymap.set("n", "bb", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })

-- Picker
vim.keymap.set("n", "gi", ":FzfLua lsp_document_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fg", ":FzfLua live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ff", ":FzfLua files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>hh", ":FzfLua helptags<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>fb", ":FzfLua buffers<CR>", { noremap = true, silent = true })

-- Aerial
-- vim.keymap.set("n", "<A-,>", ":AerialOpen<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-,>", ":lua require('aerial').fzf_lua_picker()<CR>", { noremap = true, silent = true })

-- IncRename
vim.keymap.set("n", ",,", ":IncRename ", { noremap = true, silent = true })

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.keymap.set("n", '<C-b>', "<CMD>:ToggleTerm size=12<CR>", { noremap = true, silent = false })
vim.keymap.set("t", '<C-b>', "<CMD>:ToggleTerm<CR>", { noremap = true, silent = false })

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
