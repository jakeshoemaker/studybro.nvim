local uv = vim.loop

local utils = {}
utils.get_start_time = function()
    return os.time()
end

utils.uptime = function()
    return uv.uptime()
end

return utils
