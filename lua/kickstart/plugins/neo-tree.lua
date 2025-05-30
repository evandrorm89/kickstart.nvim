-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
        },
      },
      follow_current_file = {
        enabled = true,
      },
      filtered_items = {
        visible = true,
        hide_by_name = {},
        never_show = {
          '.git',
          'DS_Store',
          'thumbs.db',
          '.vscode',
          '.pytest_cache',
          '.venv',
        },
      },
    },
    close_if_last_window = true,
  },
}
