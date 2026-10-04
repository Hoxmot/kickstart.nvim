-- ayu
-- https://github.com/Shatur/neovim-ayu

vim.pack.add { 'https://github.com/Shatur/neovim-ayu' }

require('ayu').setup {
  -- Removing background for transparent terminal background.
  --
  -- This goes through `overrides` rather than a post-hoc nvim_set_hl call:
  -- ayu merges overrides into its own groups with tbl_deep_extend, so the
  -- background is cleared while the theme's foreground survives. Calling
  -- nvim_set_hl directly replaces the whole group and drops the fg colour.
  -- It also re-applies on `:colorscheme ayu-dark`, which a one-shot call
  -- would not.
  --
  -- A function rather than a table so the palette is read after ayu has
  -- generated it for the active variant (dark / mirage / light).
  overrides = function()
    local colors = require 'ayu.colors'
    return {
      Normal = { bg = 'none' },
      -- ayu draws line numbers in `guide_normal`, which is near-black in
      -- ayu-dark and vanishes over a transparent background. `gutter_active`
      -- is the theme's own gutter colour and stays readable.
      LineNr = { fg = colors.gutter_active },
    }
  end,
}

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'ayu-mirage' or 'ayu-light'.
vim.cmd.colorscheme 'ayu-dark'

-- You can configure highlights by doing something like:
vim.cmd.hi 'Comment gui=none'
