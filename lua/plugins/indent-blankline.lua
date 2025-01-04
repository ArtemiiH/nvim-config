return {
  "lukas-reineke/indent-blankline.nvim",
  event = "User FilePost",
  opts = {
    indent = { char = "│" },
    scope = { char = "│" },
  },
  lazy = false,
  config = function(_, opts)
    require("ibl").setup(opts)
  end,
}
