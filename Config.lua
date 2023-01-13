Config = {}

Config.CustomCommand = {
    ['command'] = 'openscoreboard', -- Command for open the scoreboard
    ['keybind'] = 'F10' -- Key for open the scoreboard.
}

Config.Jobs = { --Here you can add the jobs count that you want to display in scoreboard.
    {label = '👮 Policia', job = 'police', color = 'blue'}, -- You can put the color that you want, hex, rgb, or name.
    {label = '🚕 Taxi', job = 'taxi', color = 'yellow'},
    {label = '🚑 SAME', job = 'ambulance', color = '#FF0000'},
    {label = '🔧 AEM', job = 'mechanic', color = 'orange'},
    {label = '🔧 Bennys', job = 'mechanicvip', color = 'red'},
    {label = '🟡 Prosegur', job = 'prosegur', color = 'yellow'},
    {label = '⚫ FBI', job = 'fbi', color = 'black'},
    {label = '🟢 Militares', job = 'militar', color = 'green'}
}


Config.Robos = { -- Here you can add the robberies that you want to display in scoreboard.
    {label = 'JOYERIA', job = 'prosegur', required = 4},  -- You can put a job count checker for the status.
    {label = 'HUMANE', job = 'militar', required =  6}, 
    {label = 'AMMU GC', job = 'police', required = 2}, -- For example you can robbery only if there are 6 or more "police".
    {label = 'POLLERIA', job = 'fbi', required = 6},
    {label = 'FLECA AYUNTA', job = 'police', required = 6},
    {label = 'FLECA LIFE', job = 'prosegur', required = 6},
    {label = 'LIFE INVADER', job = 'prosegur', required = 6},
    {label = 'ESTADIO MAZE BANK', job = 'police', required = 6},
}