##----------------------------------------------------------------------------
## ON_JOIN : Execute commands on player join.
##----------------------------------------------------------------------------
execute at @s run function root/class/v.localize 
execute at @s run function root/class/mpip
scoreboard players set @s v.join 1
scoreboard players set @s t.join 1