return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {},
		},
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp", -- this ensures that capabilities are configured before we setup mason-lspconfig
	},
	opts = {
		automatic_enable = true,
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
		},
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true } })
	end,
	keys = {
		{ "K", vim.lsp.buf.hover, desc = "Open hover menu" },
		{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
		{ "<Leader>ca", vim.lsp.buf.code_action, desc = "Open code action menu" },
	},
	event = "VeryLazy",
}
