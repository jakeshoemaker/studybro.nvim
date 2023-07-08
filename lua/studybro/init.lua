local utils = require"studybro.utils"
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
M.start_set = function()
    print(utils.uptime())
end

return M

