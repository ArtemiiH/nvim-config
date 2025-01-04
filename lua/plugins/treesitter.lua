return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "c",
      "lua",
      "bash",
      "luadoc",
      "printf",
      "vim",
      "vimdoc",
      "go",
      "gotmpl",
      "python",
      "yaml",
      "javascript",
      "markdown",
      "make",
    },
    auto_install = false,

    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
