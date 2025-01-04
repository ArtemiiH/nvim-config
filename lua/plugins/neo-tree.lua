return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<C-n>',     ':Neotree action=focus source=filesystem position=right toggle=true reveal<CR>', desc = 'NeoTree focues tree',            silent = true },
    { '<C-b>',     ':Neotree action=focus source=buffers position=right toggle=true<CR>',           desc = 'NeoTree show buffers',           silent = true },
    { '<leader>o', ':Neotree action=focus source=document_symbols position=right toggle=true<CR>',  desc = 'NeoTree focus document symbols', silent = true },
  },
  opts = {
    auto_clean_after_session_restore = true,
    close_if_last_window = true,
    filesystem = {
      -- window = {
      --   mappings = {
      --     ['<C-n>'] = 'close_window',
      --   },
      -- },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
    default_component_configs = {
      indent = { padding = 0 },
      git_status = {},
    },
    window = {
      width = 40,
    },
    sources = { 'filesystem', 'buffers', 'document_symbols' },
  },
}
