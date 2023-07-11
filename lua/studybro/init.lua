local utils = require"studybro.utils"
local sets = require"studybro.sets"
local macros = require"studybro.macros"

vim.notify = require"notify"


local M = {}
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
local options = {}
M.setup = function(opts)
    -- setup save dir
    options.reps = opts["reps"] or 15
    options.motivation = opts["motivation"] or "set done, go crush the next one bro!"
    options.dir = opts["dir"] or "~/.studybro"
    utils.create_dir(options.dir)
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
            sets.start({
                reps=options.reps,
                motivation=options.motivation
            })
        elseif selection == "review macros" then
            macros.get()
        else
            vim.notify("idk if you have what it takes to get gains", vim.log.levels.ERROR)
        end
    end)
end
return M



