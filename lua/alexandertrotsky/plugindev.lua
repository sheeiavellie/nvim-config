vim.api.nvim_create_user_command("ReloadPlugin", function(opts)
    local plugin = opts.fargs[1]
    package.loaded[plugin] = nil
end, { nargs = 1 })
