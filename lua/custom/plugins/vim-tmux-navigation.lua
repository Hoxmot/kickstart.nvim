-- vim-tmux-navigator
-- https://github.com/christoomey/vim-tmux-navigator
-- Pretty cool plugin, which allows me to easily navigate between nvim and tmux

vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }

-- No keymaps needed here: the plugin binds <C-h/j/k/l> and <C-\> itself on load
-- (opt out with `vim.g.tmux_navigator_no_mappings = 1`). The old lazy.nvim spec
-- listed them only to trigger lazy-loading, which vim.pack does not do.
--
-- These are the same directions as the window maps in init.lua, just extended
-- across the nvim <-> tmux boundary. This file loads after them, so the
-- plugin's versions win.
--
-- Cross-pane navigation also needs the matching bindings in ~/.tmux.conf.
