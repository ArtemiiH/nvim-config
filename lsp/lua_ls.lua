return {
  cmd = {
    "lua-language-server",
  },
  filetypes = {
    "lua",
  },
  root_markers = {
    ".git",
    ".luacheckrc",
    ".luarc.json",
    ".luarc.jsonc",
    ".stylua.toml",
    "selene.toml",
    "selene.yml",
    "stylua.toml",
  },
  settings = {
    Lua = {
      hint = { enable = true },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          "~/.local/share/nvim/lazy/",
          vim.fn.expand "$VIMRUNTIME/lua",
          vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
          vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },

  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
