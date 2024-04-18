vim.api.nvim_create_user_command('PackageReload', function(info)
    for _, pkg in ipairs(info.fargs) do
        package.loaded[pkg] = nil
        require(pkg)
    end
end, {
    nargs = '+',
    complete = function(arg_lead, _, _)
        return vim.tbl_keys(package.loaded)
        -- use this instead if you don't have a command completion plugin like nvim-cmp
        -- return vim.tbl_filter(function(mod_name) return string.find(mod_name, arg_lead, 1, true) end, vim.tbl_keys(package.loaded))
    end,
    desc = 'Clear cached lua modules and re-require them',
})

