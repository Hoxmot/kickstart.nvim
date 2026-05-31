-- dracula
-- https://github.com/Mofiqul/dracula.nvim

vim.pack.add { 'https://github.com/Mofiqul/dracula.nvim' }
-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
vim.cmd.colorscheme 'dracula'

-- Removing background for transparent terminal background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })

-- You can configure highlights by doing something like:
vim.cmd.hi 'Comment gui=none'
