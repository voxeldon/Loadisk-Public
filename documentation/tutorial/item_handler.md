[Back](https://github.com/voxeldon/Loadisk-Public/blob/main/documentation/01_main.md)

*Note: Remove all ```//comments``` for the provided code to operate*
# **Item Handler**
Loadisk has built in conversions to handle both left & right input triggers to allow custom items to be easily be created by defining an input variable, an item, and a location to trigger a child function.


## **Impulse Item**

For our item will be making a stick that says hello world when the left input is triggered while holding the item. 

1. Create a function called item.handler in your mypack folder and link it to our _main function.
```js
function mypack/item.handler
```

2. Insert the following command into our item.handler function.

```js
execute as @a[scores={v.left=1,t.left=0},hasitem={item=stick, location=slot.weapon.mainhand}] run /function mypack/item.test

//This checks if a player is both holding a stick, has a left input value of 1 and a temporary input value of 0.
//t.(temp) scores are used to catch and close function loops, resulting in a single execution of the command.
```

3. Create a sub function for our item called item.test and insert the follow code.

```js
//Run our command
say hello world!
//Close the function loop
scoreboard players set @s t.right 1
```

## Looping Item
1. Insert the following command into our item.handler function.
```js
execute as @a[scores={v.left=1,t.left=0},hasitem={item=emerald, location=slot.weapon.mainhand}] run /function mypack/item.loop_test 
execute as @a[scores={t.item_null=2..}] run /function mypack/item.loop_test
//The first line will trigger the child function 
//The second line will loop it until told otherwise
```
2. Create a sub function for our item called item.loop_test and insert the follow code.
```js
//Add scoreboards
scoreboard objectives add t.item_null dummy
scoreboard players add @s t.item_null 1
//Run our command
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
//Close the function loop
scoreboard players set @s[scores={t.item_null=100}] t.left 1
scoreboard players set @s[scores={t.item_null=100}] t.item_null 0
```

[Back](https://github.com/voxeldon/Loadisk-Public/blob/main/documentation/01_main.md)