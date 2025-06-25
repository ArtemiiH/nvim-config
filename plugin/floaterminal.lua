local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

local function merge_tables(...)
  local merged = {}

  for _, t in ipairs { ... } do
    for key, value in pairs(t) do
      merged[key] = value
    end
  end

  return merged
end

local function create_floating_window(opts)
  opts = opts or {}

  local width = math.floor(vim.o.columns * (opts.width or 0.8))
  local height = math.floor(vim.o.lines * (opts.height or 0.8))

  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  local win_config = merge_tables({
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal",
    border = "rounded",
  }, opts.win_config or {})

  local win = vim.api.nvim_open_win(buf, true, win_config)
  vim.wo[win].number = false

  return { buf = buf, win = win }
end

local function toggle_terminal()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf, width = 0.66, height = 0.66 }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})

vim.keymap.set("n", "<leader>ft", "<CMD>Floaterminal<CR>", { desc = "Toggle Floaterminal" })
