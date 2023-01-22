[Back](https://github.com/Voxel-Lab-Studios/Loadisk/blob/main/documentation/01_main.md)
# Scoreboard Variables  
## World
| Scoreboard | Description|
|--|--|
| **v.min** | Return (Minutes since last reload) |
| **v.mob** | Return (AI driven entity count) else return 0 |
| **v.mpip** | Return player count from memory |
| **v.obj** | Return (static entity count) else return 0 |
| **v.run_time** | Return (ticks since last reload) |
| **v.sec** | Return (Seconds since last reload) |
| **v.system** | Return (system entity count) else return 0 |
| **v.t:min** | Return (1) every minute else return 0 |
| **v.t:sec** | Return (1) every second else return 0 |
| **v.tick** | Return (tick of current second) |
| **v.time** | Return (time of day) |
| **v.total** | Return (total entity count) else return 0 |

## Player
| Scoreboard | Description|
|--|--|
| **v.db** | Return (1,5) for player DB level else return (0) |
| **v.equipped** | Return (1) if player is holding an item else return (0)|
| **v.ground** | Return (1) if on a block else (0) |
| **v.hurt** | Return (1) if player has lost health else (0) |
| **v.idle** | Return (1) if player is idle else return (0) |
| **v.join** | Return (1) if player joins world else (0) |
| **v.jump** | Return (1) if player is jumping else return (0) |
| **v.left** | Return (1) if player left'Punch' input is triggered else return (0) |
| **v.life** | Return (1) if player is dead else return (0) |
| **v.light_level** | Return (1-15) for local light level else return 0  |
| **v.move** | Return (1) if player is walking else return (0) |
| **v.near_entity** | Return (1-16) for distance to nearest entity else (0) |
| **v.near_player** | Return (1-16) for distance to nearest player else (0) |
| **v.pvp** | Return (1) if hit by another player else (0) |
| **v.ride** | Return (1) if player is riding else return (0) |
| **v.right** | Return (1) when player right'Eat' input is triggered else return (0) |
| **v.sleep** | Return (1) if player is sleeping else return (0) |
| **v.sneak** | Return (1) if player is sneaking else return (0) |
| **v.sprint** | Return (1) if player is sprinting else return (0) |
| **v.swim** | Return (1) if player is swimming else return (0) |
| **v.temperature** | Return (0-3) for local temperature value. (0 Cold, 1 Mild, 2 Ocean, 3 Warm) |
| **v.underblock** | Return (1) if under block else (0) |
| **v.underground** | Return (1) if underground else (0) |
| **v.underwater** | Return (1) if underwater else (0) |
| **v.weather** | Return (0-2) for local weather value. (0 Clear, 1 Rain, 2 Thunder) |
| **v.biome** | Return (0-17) for local biome value |
| - *beach*            | 0  |             	
| - *desert*           | 1  |	
| - *extreme_hills*    | 2  |	
| - *flat*	           | 3  |
| - *forest*	         | 4  |
| - *ice*	             | 5  |
| - *jungle*	         | 6  |
| - *mesa*	           | 7  |
| - *mushroom_island*  | 8  |	
| - *ocean*	           | 9  |
| - *plain*	           | 10 |
| - *river*	           | 11 |
| - *savanna*	         | 12 |
| - *stone_beach*	     | 13 |
| - *swamp*	           | 14 |
| - *taiga*	           | 15 |
| - *the_end*	         | 16 |
| - *the_nether*       | 17 |


## Player Events
| Events | Description|
|--|--|
| **loadisk:set.dmg(0,10)_event** | **set player damage output** |
| *Example* | */event entity @s loadisk:set.dmg10_event* |

[Back](https://github.com/Voxel-Lab-Studios/Loadisk/blob/main/documentation/01_main.md)