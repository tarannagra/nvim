return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		opts = {
			default_file_explorer = true,
			columns = {
				"icon",
			},
		},
	},
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		keys = {
			{ "<leader>o", "<cmd>OutlineOpen<CR>", desc = "Toggle outline" },
			{ "<leader>of", "<cmd>OutlineFocus<CR>", desc = "Toggle outline" },
		},
		opts = {},

		keymaps = {
			up_and_jump = "<C-p>",
			down_and_jump = "<C-n>",
		},
	},
}
