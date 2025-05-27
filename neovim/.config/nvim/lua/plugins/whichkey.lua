return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = { },
  keys = {
    {
      "<Leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "View Keymaps (which-key)",
    },
  },
}
