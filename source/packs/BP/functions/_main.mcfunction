##----------------------------------------------------------------------------
## MAIN: Core game loop. 
##----------------------------------------------------------------------------
#install Intiger
execute as @e[type=loadisk:ram] unless score "9903" int = "9903" int run function root/class/integers/int00
execute as @e[type=loadisk:ram] unless score "9999" int = "9999" int run function root/class/integers/int01
execute as @e[type=loadisk:ram] unless score "-9903" int = "-9903" int run function root/class/integers/int00
execute as @e[type=loadisk:ram] unless score "-9999" int = "-9999" int run function root/class/integers/int00
#Catch join signal
scoreboard players add @a[scores={t.join=1..}] t.join 1
scoreboard players reset @a[scores={t.join=5..}] v.join
scoreboard players reset @a[scores={t.join=5..}] t.join
#World Time 
execute at @e[type=loadisk:ram,scores={v.time=22..80}]  run scoreboard players set day var 1
execute at @e[type=loadisk:ram,scores={v.time=80..}]    run scoreboard players set day var 0
execute at @e[type=loadisk:ram,scores={v.time=..21}]    run scoreboard players set day var 0
execute at @e[type=loadisk:ram,scores={v.sec=1}]        run scoreboard players operation time var = @e[type=loadisk:ram] v.time
#Catch near by player signal 0 for no player 1-16 for distance to player
execute as @a at @s if entity @p[r=16,rm=1] run scoreboard players set @s v.near_player 16
execute as @a at @s if entity @p[r=15,rm=1] run scoreboard players set @s v.near_player 15
execute as @a at @s if entity @p[r=14,rm=1] run scoreboard players set @s v.near_player 14
execute as @a at @s if entity @p[r=13,rm=1] run scoreboard players set @s v.near_player 13
execute as @a at @s if entity @p[r=12,rm=1] run scoreboard players set @s v.near_player 12
execute as @a at @s if entity @p[r=11,rm=1] run scoreboard players set @s v.near_player 11
execute as @a at @s if entity @p[r=10,rm=1] run scoreboard players set @s v.near_player 10
execute as @a at @s if entity @p[r=9,rm=1] run scoreboard players set @s v.near_player 9
execute as @a at @s if entity @p[r=8,rm=1] run scoreboard players set @s v.near_player 8
execute as @a at @s if entity @p[r=7,rm=1] run scoreboard players set @s v.near_player 7
execute as @a at @s if entity @p[r=6,rm=1] run scoreboard players set @s v.near_player 6
execute as @a at @s if entity @p[r=5,rm=1] run scoreboard players set @s v.near_player 5
execute as @a at @s if entity @p[r=4,rm=1] run scoreboard players set @s v.near_player 4
execute as @a at @s if entity @p[r=3,rm=1] run scoreboard players set @s v.near_player 3
execute as @a at @s if entity @p[r=2,rm=1] run scoreboard players set @s v.near_player 2
execute as @a at @s if entity @p[r=1,rm=1] run scoreboard players set @s v.near_player 1
execute as @a at @s unless entity @p[r=16,rm=1] run scoreboard players set @s v.near_player 0
#Catch near by entity signal 0 for no entity 1-16 for distance to entity
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=16,rm=1] run scoreboard players set @s v.near_entity 16
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=15,rm=1] run scoreboard players set @s v.near_entity 15
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=14,rm=1] run scoreboard players set @s v.near_entity 14
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=13,rm=1] run scoreboard players set @s v.near_entity 13
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=12,rm=1] run scoreboard players set @s v.near_entity 12
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=11,rm=1] run scoreboard players set @s v.near_entity 11
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=10,rm=1] run scoreboard players set @s v.near_entity 10
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=9,rm=1] run scoreboard players set @s v.near_entity 9
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=8,rm=1] run scoreboard players set @s v.near_entity 8
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=7,rm=1] run scoreboard players set @s v.near_entity 7
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=6,rm=1] run scoreboard players set @s v.near_entity 6
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=5,rm=1] run scoreboard players set @s v.near_entity 5
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=4,rm=1] run scoreboard players set @s v.near_entity 4
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=3,rm=1] run scoreboard players set @s v.near_entity 3
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=2,rm=1] run scoreboard players set @s v.near_entity 2
execute as @a at @s if entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=1,rm=1] run scoreboard players set @s v.near_entity 1
execute as @a at @s unless entity @e[type=!player,family=!object,family=!system,family=!inanimate,r=16,rm=1] run scoreboard players set @s v.near_entity 0