# studybro.nvim
a neovim plugin aimed to help all the gymbros study. a truly ~ tasteful ~ plugin

## usage
### lazy.nvim 
``` lua 
'jakeshoemaker/studybro.nvim'
```
### packer.nvim 
``` lua 
use { 'jakeshoemaker/studybro.nvim' }
```
### plug
``` lua
Plug 'jakeshoemaker/studybro.nvim'
```


All available commands are available via the picker: 
``` lua
    require"studybro".workout()

    -- configuration available via setup function:
    require"studybro".setup({
        reps = "amount of time you want a set to run for" -- default=15min
        motivation = "message to tell your self after a set :)"
        dir = "where to store your progress log"
    })
```

#### currently (more coming soon brahs)
```
 require"studybro.sets".start() -- starts pomo style clock defaulted time is 15min
 require"studybro.macros".get() -- gets md file for all your macros (goals)
```
