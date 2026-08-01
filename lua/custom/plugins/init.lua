-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Iterate over all Lua files in the plugins directory and load them
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
for file_name, entry_type in vim.fs.dir(plugins_dir) do
  if entry_type == 'file' and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    local spec = require('custom.plugins.' .. module)

    -- Each file here is expected to configure itself via `vim.pack.add`, so it
    -- should not return anything. A returned table means the file is still a
    -- lazy.nvim spec, which nothing consumes - the plugin would silently never
    -- load. Warn loudly instead of failing quietly.
    if type(spec) == 'table' then
      vim.notify(
        ('custom.plugins.%s returned a table - it looks like an un-migrated lazy.nvim spec and was ignored. Convert it to `vim.pack.add`.'):format(module),
        vim.log.levels.WARN
      )
    end
  end
end
