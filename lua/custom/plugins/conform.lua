-- conform
-- Custom formatter configuration
--
-- init.lua already calls conform's setup. Calling it again here is safe and
-- deliberate: conform re-creates its `Conform` augroup with clear = true, so
-- the format-on-save autocmd is replaced rather than stacked, and
-- `formatters_by_ft` is merged rather than clobbered.

local formatters_by_ft = {
  javascript = { 'prettier', 'prettierd', 'eslint_d', stop_after_first = true },
  lua = { 'stylua' },
  python = { 'isort', 'black' },
  sh = { 'shfmt' },
  typescript = { 'prettier', 'prettierd', 'eslint_d', stop_after_first = true },
}

require('conform').setup {
  formatters_by_ft = formatters_by_ft,

  -- init.lua ships an empty whitelist, so nothing formatted on save. Format
  -- every filetype configured above; deriving the check from the table itself
  -- keeps the two in sync when a formatter is added or removed.
  --
  -- kickstart's example uses timeout_ms = 500, which is fine for stylua but too
  -- short for the first black/isort/prettier run of a session - the interpreter
  -- cold start alone can exceed it, and with notify_on_error = false the save
  -- just silently goes unformatted. Warm runs measure ~200-270ms, so 3s is
  -- headroom rather than added latency: the timeout is a ceiling, not a delay.
  format_on_save = function(bufnr)
    if formatters_by_ft[vim.bo[bufnr].filetype] then return { timeout_ms = 3000 } end
    return nil
  end,
}
