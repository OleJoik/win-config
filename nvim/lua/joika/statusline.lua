local fn, cmd = vim.fn, vim.cmd

function my_statusline()
    local branch = fn.FugitiveHead()

    if branch and #branch > 0 then
        branch = '  ' .. branch
    end

    return branch .. ' %f%m%= ' .. string.format('tab:%s', vim.o.tabstop) .. '  %l:%c'
end

cmd [[ set statusline=%!luaeval('my_statusline()') ]]
