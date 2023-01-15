# **Item Handler**
Loadisk has built in conversions to handle both left & right input triggers to allow custom items to be easily be created by defining an input variable, an item, and a location to trigger a child function.


## **Impulse Item**

For our item will be making a stick that says hello world when the left input is triggered while holding the item. 

> First lets create a function called item.handler in your mypack folder and link it to our index function.
```js
## INDEX 
function mypack/_main 
function mypack/item.handler
```

Then we can insert the following command into our item.handler function.

```js
execute as @a[scores={v.left=1,t.left=0},hasitem={item=stick, location=slot.weapon.mainhand}] run /function mypack/item.test

//This checks if a player is both holding a stick, has a left input value of 1 and a temporary input value of 0.
//t.(temp) scores are used to catch and close function loops, resulting in a single execution of the command.
```

Then will create a sub function for our item called item.stick and insert the follow code.

```js
## Item : Stick
#Entry
//Run our command
say hello world!
#Close>>>
//Close the function loop
scoreboard players set @s t.right 1
```