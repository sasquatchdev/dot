return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    {
      "echasnovski/mini.icons",
      opts = { }
    }
  },
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_sperators = "|",
      section_separators = { left = '', right = '' },
    }
  }
}
