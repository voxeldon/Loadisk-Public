execute as @s[tag=!is_flying,scores={v.mpip=1}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player01_event
execute as @s[tag=!is_flying,scores={v.mpip=2}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player02_event
execute as @s[tag=!is_flying,scores={v.mpip=3}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player03_event
execute as @s[tag=!is_flying,scores={v.mpip=4}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player04_event
execute as @s[tag=!is_flying,scores={v.mpip=5}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player05_event
execute as @s[tag=!is_flying,scores={v.mpip=6}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player06_event
execute as @s[tag=!is_flying,scores={v.mpip=7}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player07_event
execute as @s[tag=!is_flying,scores={v.mpip=8}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player08_event
execute as @s[tag=!is_flying,scores={v.mpip=9}]  run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player09_event
execute as @s[tag=!is_flying,scores={v.mpip=10}] run summon loadisk:flight.dummy ~ ~ ~ loadisk:spawn.player10_event

event entity @s[tag=!is_flying] loadisk:is_flying_event
tag @s add is_flying