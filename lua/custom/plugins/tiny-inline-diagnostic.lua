-- tiny-inline-diagnostic
-- https://github.com/rachartier/tiny-inline-diagnostic.nvim

vim.pack.add { 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' }
require('tiny-inline-diagnostic').setup { preset = 'ghost' }

-- This plugin renders diagnostics inline itself, so the built-in virtual text
-- has to be turned off or every diagnostic shows up twice. init.lua enables it,
-- and this file loads afterwards, so the override belongs here.
vim.diagnostic.config { virtual_text = false }
