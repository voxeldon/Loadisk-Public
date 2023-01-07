##Init
scoreboard objectives add v.velocity dummy
scoreboard objectives add v.hight    dummy
scoreboard objectives add v.speed    dummy
scoreboard objectives add v.dash     dummy
scoreboard players add @s v.velocity 0
scoreboard players add @s v.hight    0
scoreboard players add @s v.speed    0
##Variables
scoreboard players remove @s[scores={v.hight=-99..},rxm=16,rx=90]  v.hight 1
scoreboard players add    @s[scores={v.hight=..99},rxm=-90,rx=-16] v.hight 1
scoreboard players remove @s[rxm=-15,rx=15,scores={v.hight=1..}]   v.hight 1
scoreboard players add    @s[rxm=-15,rx=15,scores={v.hight=..-1}]  v.hight 1

scoreboard players add    @s[scores={v.velocity=..99},rxm=16,rx=90]    v.velocity 1
scoreboard players remove @s[scores={v.velocity=-99..},rxm=-90,rx=-16] v.velocity 1
scoreboard players remove @s[rxm=-15,rx=15,scores={v.velocity=1..}]    v.velocity 1
scoreboard players add    @s[rxm=-15,rx=15,scores={v.velocity=..-1}]   v.velocity 1

scoreboard players set @s[scores={v.hight=30..,v.velocity=..30}] v.speed 1

##Anim
#Null unless specified. (Used for animation toggles)
event entity @s[scores={v.velocity=10..}]  loadisk:is_gliding_event
event entity @s[scores={v.velocity=..-10}] loadisk:is_gliding_event
event entity @s[rxm=-90,rx=-16] loadisk:is_flying_up_event
event entity @s[rxm=16,rx=90]   loadisk:kill.is_flying_up_event

##Flight

execute as @s[rx=-90]             as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 30 true
execute as @s[rxm=-89,rx=-81]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 24 true
execute as @s[rxm=-80,rx=-71]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 21 true
execute as @s[rxm=-70,rx=-61]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 18 true
execute as @s[rxm=-60,rx=-51]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 15 true
execute as @s[rxm=-50,rx=-41]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 12 true
execute as @s[rxm=-40,rx=-31]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 9 true
execute as @s[rxm=-30,rx=-21]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 6 true
execute as @s[rxm=-20,rx=-16]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s levitation 1 3 true

execute as @s[rxm=-89,rx=-16]     as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 1 true
execute as @s[rxm=16,rx=50]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 5 true
execute as @s[rxm=16,rx=50]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 4 true
execute as @s[rxm=51,rx=60]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 3 true
execute as @s[rxm=61,rx=70]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 2 true
execute as @s[rxm=71,rx=84]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s slow_falling 1 1 true

execute as @s[scores={v.speed=1}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 5 true
execute as @s[scores={v.speed=2}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 10 true
execute as @s[scores={v.speed=3}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 15 true
execute as @s[scores={v.speed=4}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 20 true
execute as @s[scores={v.speed=5}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 25 true
execute as @s[rxm=-15,rx=15]      as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 10 true     
execute as @s[rxm=85,rx=90]       as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s clear

##Dash
execute as @s[scores={v.jump=1}] run scoreboard players add @s v.dash 1
execute as @s[scores={v.jump=0,v.dash=1..2}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 30  true
execute as @s[scores={v.jump=0,v.dash=3..4}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 60  true
execute as @s[scores={v.jump=0,v.dash=5}]    as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 90  true
execute as @s[scores={v.jump=0,v.dash=6..7}] as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 150 true
execute as @s[scores={v.jump=0,v.dash=8}]    as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 90  true
execute as @s[scores={v.jump=0,v.dash=9..}]  as @e[family=flyable] if score @s v.mpip = @p v.mpip run effect @s speed 1 60  true
execute as @s[scores={v.jump=0}] run scoreboard players set @s v.dash 0