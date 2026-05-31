-- conform
-- Custom formatter configuration
--
--
require('conform').formatters_by_ft = vim.tbl_deep_extend('force', require('conform').formatters_by_ft or {}, {
    javascript = {'prettier', 'prettierd', 'eslint_d', stop_after_first = true},
    lua = {'stylua'},
    python = {'isort', 'black'},
    sh = {'shfmt'},
    typescirpt = {'prettier', 'prettierd', 'eslint_d', stop_after_first = true},
})
