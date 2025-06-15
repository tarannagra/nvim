return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
            animate = { enabled = false },
			bigfile = { enabled = false },
			dashboard = { enabled = true },
			explorer = {
				enabled = true,
			},
			indent = { enabled = true },
			input = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					explorer = {
						layout = {
							layout = { position = "right" },
						},
					},
				},
			},
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			zen = {
				enabled = true,
				toggles = {
					dim = true,
					git_signs = false,
				},
				show = {
					statusline = false,
					tabline = false,
				},

			},
		},
	},
}
