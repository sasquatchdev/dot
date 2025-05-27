return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { "<Leader>ff", ":Telescope find_files<Enter>", desc = "Open file picker" },
    { "<Leader>fg", ":Telescope live_grep<Enter>", desc = "Open grep search" }
  }
}
