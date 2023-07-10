local M = {}
M.get = function()
    local filename = "~/.studybro/macros.md"
    vim.cmd('edit ' .. filename)
end

return M
