import { ram, v } from '../definitions.js';
export let time = 0;
export let loopTick = 0;
export let secondTick = 0;
export let minuteTick = 0;

//Game Clock
export function clock() {
    if (minuteTick === 60) {
        minuteTick = 0;
    }

    if (secondTick === 60) {
        secondTick = 0;
        minuteTick++;
    }

    if (loopTick === 20) {
        loopTick = 0;
        secondTick++;
        v.runCommandAsync(`scoreboard players set ${ram} v.sec 1`);
    } else {
        if (loopTick === 1) {
            v.runCommandAsync(`scoreboard players set ${ram} v.sec 0`);
        }
        loopTick++;
    }
    
    v.runCommandAsync(`scoreboard players set ${ram} v.tick ${loopTick}`);
    v.runCommandAsync(`scoreboard players set ${ram} v.t:sec ${secondTick}`);
    v.runCommandAsync(`scoreboard players set ${ram} v.t:min ${minuteTick}`);
    time = (new Date()).getTime();
}