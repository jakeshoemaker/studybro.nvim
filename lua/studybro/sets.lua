vim.notify = require"notify"

local sets = {}
sets.start_set = function(opts)
    local time = opts["reps"] or 15
--    uv.sleep(time * 60 * 1000)
    vim.defer_fn(function()
        vim.notify("set done, take a rest bro", vim.log.levels.ERROR)
    end, time * 60 * 1000)
    -- todo: start next set
end

return sets
