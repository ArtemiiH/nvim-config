return {
  {
    "neovim/nvim-lspconfig",
    opts = { inlay_hints = { enabled = true } },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    enabled = true,
    opts = {
      mode = "cursor",
      multiline_threshold = 30,
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- webdev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "prettier",

        -- shell stuff
        "shfmt",

        -- go stuff
        "gopls",

        -- python stuff
        "pyright",
        "isort",
        "black",
        "debugpy",
        -- toml
        "taplo",
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    ft = { "go", "lua", "yaml", "markdown", "python" },
    opts = function()
      return require "configs.null-ls"
    end,
  },

  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    opts = function()
      return require "configs.conform"
    end,
    config = function(_, opts)
      require("conform").setup(opts)
    end,
  },

  {
    "mfussenegger/nvim-dap",
  },

  {
    "nvim-neotest/nvim-nio",
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-python").setup()
      require("dap-python").test_runner = "pytest"
    end,
  },

  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },

  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
