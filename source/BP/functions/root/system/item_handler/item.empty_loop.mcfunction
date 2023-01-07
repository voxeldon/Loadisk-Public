##----------------------------------------------------------------------------
## Item : Empty looping item example.
##----------------------------------------------------------------------------
#Init>>>
scoreboard objectives add t.item_null dummy
scoreboard players add @s t.item_null 1
#Entry>>>
execute as @s[scores={t.item_null=1}] run say 10
execute as @s[scores={t.item_null=10}] run say 9
execute as @s[scores={t.item_null=20}] run say 8
execute as @s[scores={t.item_null=30}] run say 7
execute as @s[scores={t.item_null=40}] run say 6
execute as @s[scores={t.item_null=50}] run say 5
execute as @s[scores={t.item_null=60}] run say 4
execute as @s[scores={t.item_null=70}] run say 3
execute as @s[scores={t.item_null=80}] run say 2
execute as @s[scores={t.item_null=90}] run say 1
execute as @s[scores={t.item_null=100}] run say hello_world
#Close>>>
scoreboard players set @s[scores={t.item_null=100}] t.left 1
scoreboard players set @s[scores={t.item_null=100}] t.item_null 0