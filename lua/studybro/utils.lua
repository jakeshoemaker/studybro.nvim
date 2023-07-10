local uv = vim.loop

local utils = {}
local save_types = {
    macro = 1,
    progress_log = 2,
    global_stats = 3
}

utils.create_dir = function(dir)
    local command = string.format("mkdir -p %s", dir)
    os.execute(command)
end

utils.get_start_time = function()
    return os.time()
end

utils.uptime = function()
    return uv.uptime()
end

utils.save = function(save_type, table)
end

return utils

