return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	keys = {
		{ "<Leader>ff", ":Telescope find_files<Enter>", desc = "Open file picker" },
		{ "<Leader>fg", ":Telescope live_grep<Enter>", desc = "Open grep search" },
	},
	opts = function()
		return {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		}
	end,
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("ui-select")
	end,
	lazy = false,
}
