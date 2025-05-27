return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{
			"echasnovski/mini.icons",
			opts = {},
		},
		"catppuccin/nvim",
	},
	opts = {
		options = {
			icons_enabled = true,
			theme = "auto", -- requires catppuccin
			component_sperators = "|",
			section_separators = { left = "", right = "" },
		},
	},
	event = "VeryLazy",
}
