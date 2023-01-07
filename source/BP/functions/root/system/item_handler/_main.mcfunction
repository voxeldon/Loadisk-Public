##----------------------------------------------------------------------------
## MAIN : Custom item handler.
##----------------------------------------------------------------------------
#Empty item example.
execute as @a[scores={v.left=1,t.left=0},hasitem={item=stick, location=slot.weapon.mainhand}] run /function root/system/item_handler/item.empty
#Empty looping item example.
execute as @a[scores={v.left=1,t.left=0},hasitem={item=emerald, location=slot.weapon.mainhand}] run /function root/system/item_handler/item.empty_loop
execute as @a[scores={t.item_null=2..}] run /function root/system/item_handler/item.empty_loop