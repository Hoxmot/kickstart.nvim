-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
--
-- NOTE: kickstart ships its own migrated copy at lua/kickstart/plugins/neo-tree.lua.
-- That require stays commented out in init.lua - this file replaces it.

-- Icons come from `mini.icons`, which init.lua sets up when a Nerd Font is
-- available and which mocks the `nvim-web-devicons` API for plugins that expect
-- it. No separate devicons install is needed.
vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  window = {
    position = 'current',
    mappings = {
      ['h'] = 'close_node',
      ['l'] = 'open',
    },
  },
  filesystem = {
    hijack_netrw_behavior = 'open_default',
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}
