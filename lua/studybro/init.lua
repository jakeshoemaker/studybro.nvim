local utils = require"studybro.utils"
local sets = require"studybro.sets"
vim.notify = require"notify"
-- [[
-- functions needed: 
--  - "sb_sets" start (pomo, but gymbro themed)
--      -> breaks == rest
--    "sb_super_set" start a long pomo: maybe 5-10 pomos
--    -> takes: num-sets (number of rounds)
--    "sb_pb" - longest time coding
--  - "sb_macros" - goals function (store in table in file?)
--    "sb_note" - notes function, that saves per file being edited
--    -> need a background timer function that writes the time while neovim is opened
--  - "sb_progress_log" - "stats function per day / month / year / alltime
-- ]]
local M = {}
M.setup = function(opts)
    -- setup save dir
    if (opts["dir"] == nil or opts["dir"] == "") then
        opts["dir"] = "~/.studybro/"
    end
    utils.create_dir(opts["dir"])
end

M.start_set = function()
    print(utils.uptime())
end

M.workout = function()
    vim.ui.select({"start set", "review macros", "edit progress log"}, {
        prompt = "welcome bro! select an input to get GAINS",
        format_item = function(item)
            return item
        end,
    }, function(selection, _)
        if selection == "start set" then
            sets.start_set({reps=1})
        else
            vim.notify("idk if you have what it takes to get gains", vim.log.levels.ERROR)
        end
    end)
end
return M



