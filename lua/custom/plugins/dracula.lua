-- dracula
-- https://github.com/Mofiqul/dracula.nvim
--
-- Kept installed but not activated - `custom/plugins/ayu.lua` sets the active
-- colorscheme. Switch to this one at any time with `:colorscheme dracula`,
-- or make it the default again by moving the `colorscheme` call here.

vim.pack.add { 'https://github.com/Mofiqul/dracula.nvim' }

require('dracula').setup {
  -- Removing background for transparent terminal background.
  -- dracula exposes this as a first-class option, so it survives a
  -- `:colorscheme dracula` switch and keeps the theme's foreground.
  transparent_bg = true,
  italic_comment = false,
}
