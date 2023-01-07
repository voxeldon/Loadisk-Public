##----------------------------------------------------------------------------
## MPIP : Interalize player ID
##----------------------------------------------------------------------------
scoreboard players add @s v.mpip 0

execute as @s at @s if score @s[scores={v.mpip=0}] v.mpip <= @e[type=loadisk:ram] v.mpip run scoreboard players add @e[type=loadisk:ram] v.mpip 1
scoreboard players operation @s[scores={v.mpip=0}] v.mpip = @e[type=loadisk:ram] v.mpip