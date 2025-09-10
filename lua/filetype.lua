vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.jsp", "*.jspx" },
    command = "setfiletype jsp",
})
