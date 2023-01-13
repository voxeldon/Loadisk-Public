##----------------------------------------------------------------------------
## Get DB : Check player actions and return a db value.
##----------------------------------------------------------------------------
scoreboard players set @a[scores={v.idle = 1}] v.db 0
scoreboard players set @a[scores={v.sneak = 1}] v.db 1
scoreboard players set @a[scores={v.move = 1}] v.db 2
scoreboard players set @a[scores={v.sprint = 1}] v.db 3
scoreboard players set @a[scores={v.swim = 1}] v.db 4
scoreboard players set @a[scores={v.jump = 1}] v.db 5