return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				overrides = function(colors)
					local theme = colors.theme
					return {
						Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
						PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
						PmenuSbar = { bg = theme.ui.bg_m1 },
						PmenuThumb = { bg = "#C0A36E" },
						-- BlinkCmpMenuBorder = { fg = "", bg = "" },

						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
						-- LineNr = { fg = "#C0A36E", bg = "NONE" },
						CursorLineNr = { fg = colors.palette.sakuraPink, bg = "NONE" },
					}
				end,
			})
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {},
		opts = {
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
				-- sections
				sections = {
					-- left
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					-- right
					lualine_x = { "fileformat", "filetype" },
					lualine_y = {},
					lualine_z = { "location" },
				},
			},
		},
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		opts = {
			preset = "powerline",
			multilines = {
				enabled = true,
			},
		},
		vim.diagnostic.config({ virtual_text = false }),
	},
	{
		"folke/noice.nvim",
		opts = {
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
			},
			views = {
				cmdline_popup = {
					position = {
						row = "10%",
						col = "50%",
					},
				},
			},
			lsp = {
				hover = {
					enabled = true,
				},
			},
			presets = {
				inc_rename = true,
			},
		},
	},
}
