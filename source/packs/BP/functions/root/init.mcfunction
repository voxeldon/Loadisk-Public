##----------------------------------------------------------------------------
## INIT : Internalize game state.
##----------------------------------------------------------------------------
scoreboard objectives add t.choice dummy
scoreboard players add @s t.choice 0
scoreboard players set @s[scores={t.choice=0}] t.choice 1
execute at @s[scores={t.choice=2}] run function root/class/variables
tellraw @s[scores={t.choice=1}] {"rawtext":[{"text":"⨀ | §2Consol§r - Are you sure you want to reset? Run /function/yes §nto §2confirm §ror §nfunction/no §rto §4cancel."}]}
tellraw @s[scores={t.choice=2}] {"rawtext":[{"text":"⨀ | §2Consol§r - §6Initalizing: §rGame reset."}]}
scoreboard players reset @s[scores={t.choice=2..}] t.choice 