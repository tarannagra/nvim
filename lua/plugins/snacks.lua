return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			dashboard = {
				enabled = true,
                preset = {
                    header = [[
███████╗██╗         ██████╗ ██████╗  █████╗ ██╗███╗   ██╗ ██████╗ 
██╔════╝██║         ██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔═══██╗
█████╗  ██║         ██████╔╝██████╔╝███████║██║██╔██╗ ██║██║   ██║
██╔══╝  ██║         ██╔══██╗██╔══██╗██╔══██║██║██║╚██╗██║██║   ██║
███████╗███████╗    ██████╔╝██║  ██║██║  ██║██║██║ ╚████║╚██████╔╝
╚══════╝╚══════╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ]]
                }
			},
			indent = { enabled = true },
			input = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					explorer = {
						focus = "list",
						auto_close = false,
						follow_file = true,
						jump = { close = false },
						layout = {
							layout = { position = "right" },
						},
					},
				},
			},
			notifier = {
				enabled = true,
				timeout = 5000,
				style = "fancy",
				width = { min = 50, max = 0.6 },
				height = { min = 1, max = 0.6 },
			},
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	},
}
