[Back](https://github.com/Voxel-Lab-Studios/Loadisk/blob/main/documentation/01_main.md)
# Scoreboard Variables  
## World
- **v.min** 
  > Return (Minutes since last reload)
- **v.mob** 
  > Return (AI driven entity count) else return 0
- **v.mpip** 
  > Return player count from memory.
- **v.obj** 
  > Return (static entity count) else return 0
- **v.run_time** 
  > Return (ticks since last reload)
- **v.sec** 
  > Return (Seconds since last reload)
- **v.system** 
  > Return (system entity count) else return 0
- **v.t:min** 
  > Return (1) every minute else return 0
- **v.t:sec** 
  > Return (1) every second else return 0
- **v.tick** 
  > Return (tick of current second)
- **v.time** 
  > Return (time of day)
- **v.total** 
  > Return (total entity count) else return 0

## Player
- **v.db** 
  > Return (player Db level)
- **v.ground** 
  > Return (1) if on a block else (0)
- **v.idle** 
  > Return (1) if player is idle else return 0
- **v.jump** 
  > Return (1) if player is jumping else return 0
- **v.life** 
  > Return (1) if player is dead else return 0
- **v.left** 
  > Return (1) when player left'Punch' input is triggered else return 0
- **v.right** 
  > Return (1) when player right'Eat' input is triggered else return 0
- **v.life** 
  > Return (1) if player is dead else return 0
- **v.move** 
  > Return (1) if player is walking else return 0
- **v.ride** 
  > Return (1) if player is riding else return 0
- **v.rx** 
  > Return (player rotation x [-90,90])
- **v.ry** 
  > Return (player rotation y [-90,90])
- **v.sleep**  
  > Return (1) if player is sleeping else return 0
- **v.sneak**  
  > Return (1) if player is sneaking else return 0
- **v.sprint** 
  > Return (1) if player is sprinting else return 0
- **v.swim** 
  > Return (1) if player is swimming else return 0
- **v.underblock**  
  > Return (1) if under block else (0)
- **v.underground** 
  > Return (1) if underground else (0) 
- **v.underwater** 
  > Return (1) if underwater else (0)
- **v.join**
  > Return (1) when player joins world else (0)
- **v.light_level**
  > Return (0-15) for player detected light level
- **v.near_player**
  > Return (1-16) for distance to nearest player else (0)
- **v.near_entity**
  > Return (1-16) for distance to nearest entity else (0)
- **v.hurt**
  > Return (1) if player has lost health
- **v.temperature**
  > Return (0-3) for player detected temperature value. (0 Cold, 1 Mild, 2 Ocean, 3 Warm)

[Back](https://github.com/Voxel-Lab-Studios/Loadisk/blob/main/documentation/01_main.md)