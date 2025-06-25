return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  -- Using a utility to find the project root is still very common and useful
  root_markers = { "pyproject.toml", "setup.py", ".git" },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
}
