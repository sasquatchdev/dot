return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	keys = {
		{ "<C-h>", ":TmuxNavigateLeft<Enter>", desc = "Navigate left" },
		{ "<C-j>", ":TmuxNavigateDown<Enter>", desc = "Navigate down" },
		{ "<C-k>", ":TmuxNavigateUp<Enter>", desc = "Navigate up" },
		{ "<C-l>", ":TmuxNavigateRight<Enter>", desc = "Navigate right" },
	},
}
