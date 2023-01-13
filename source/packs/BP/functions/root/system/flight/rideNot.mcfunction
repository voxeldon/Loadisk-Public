##----------------------------------------------------------------------------
## rideNOt: Run if player is not riding another entity 
##----------------------------------------------------------------------------
execute at @s[scores={v.mpip=1}] run event entity @e[family=flyable,scores={v.mpip=1}] loadisk:despawn_event
execute at @s[scores={v.mpip=2}] run event entity @e[family=flyable,scores={v.mpip=2}] loadisk:despawn_event
execute at @s[scores={v.mpip=3}] run event entity @e[family=flyable,scores={v.mpip=3}] loadisk:despawn_event
execute at @s[scores={v.mpip=4}] run event entity @e[family=flyable,scores={v.mpip=4}] loadisk:despawn_event
execute at @s[scores={v.mpip=5}] run event entity @e[family=flyable,scores={v.mpip=5}] loadisk:despawn_event
execute at @s[scores={v.mpip=6}] run event entity @e[family=flyable,scores={v.mpip=6}] loadisk:despawn_event
execute at @s[scores={v.mpip=7}] run event entity @e[family=flyable,scores={v.mpip=7}] loadisk:despawn_event
execute at @s[scores={v.mpip=8}] run event entity @e[family=flyable,scores={v.mpip=8}] loadisk:despawn_event
execute at @s[scores={v.mpip=9}] run event entity @e[family=flyable,scores={v.mpip=9}] loadisk:despawn_event
execute at @s[scores={v.mpip=10}] run event entity @e[family=flyable,scores={v.mpip=10}] loadisk:despawn_event

scoreboard players set @s[tag=is_flying] v.velocity 0
scoreboard players set @s[tag=is_flying] v.hight 0
scoreboard players set @s[tag=is_flying] v.speed 0
event entity @s[tag=is_flying] loadisk:kill.is_flying_event
event entity @s[tag=is_flying] loadisk:kill.is_gliding_event
tag @s[tag=is_flying] remove is_flying