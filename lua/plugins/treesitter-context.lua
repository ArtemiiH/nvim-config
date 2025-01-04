return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = "BufReadPre",
  enabled = true,
  opts = {
    mode = "cursor",
    multiline_threshold = 30,
  },
}
