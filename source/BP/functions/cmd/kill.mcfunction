##----------------------------------------------------------------------------
## Kill: Removes all non flagged entities.
##----------------------------------------------------------------------------
#Loop back
scoreboard objectives add t.kill dummy
scoreboard players add @e[type=loadisk:ram] t.kill 0
scoreboard players add @e[type=loadisk:ram,scores={t.kill=0..29}] t.kill 1
scoreboard players reset @e[type=loadisk:ram,scores={t.kill=30}] t.kill
#Commands
execute as @e[type=loadisk:ram,scores={t.kill=0..1}] run event entity @e[type=!loadisk:ram,family=!ignore.kill,tag=!ignore.kill] loadisk:despawn_event
execute as @e[type=loadisk:ram,scores={t.kill=10}] run kill @e[type=!loadisk:ram,family=!ignore.kill,tag=!ignore.kill,type=!player]
execute as @e[type=loadisk:ram,scores={t.kill=20}] run kill @e[type=item]