-- screenkey
-- https://github.com/NStefan002/screenkey.nvim

vim.pack.add { { src = 'https://github.com/NStefan002/screenkey.nvim', version = vim.version.range '*' } }
require('screenkey').setup { group_mappings = true }
