import { ver, v } from '../definitions.js';
import { loopTick, secondTick, minuteTick } from './clock.js';
import { prefixLocal, prefixGlobal, uiIdle, uiMove, uiSprint, uiSwim, uiSneak, uiJump, uiRide, uiLeft, uiRight, uiDb , uiSleep, uiLightLevel, uiNearPlayer, uiNearEntity, uiHurt, uiTemp, uiPvp } from '../uiBlocks.js';

let ltUI = "";
let stUI = "";
let mtUI = "";
let uiBar = "";
let uiID = 1;

export function uiManager() {
    //Prefix single digit numbers with a 0
    if (loopTick < 10) { ltUI = `0${loopTick}`; } else { ltUI = `${loopTick}`; }
    if (secondTick < 10) { stUI = `0${secondTick}`; } else { stUI = `${secondTick}`; }
    if (minuteTick < 10) { mtUI = `0${minuteTick}`; } else { mtUI = `${minuteTick}`; }

    //UI Display
    if (uiID === 1) {
        uiBar = `${prefixLocal} {"rawtext": [{"text":" ⨀ |"}, ${uiIdle},${uiMove},${uiSprint},${uiSwim},${uiSneak},${uiJump},${uiRide},${uiLeft},${uiRight},${uiDb},${uiSleep},${uiHurt},${uiTemp},${uiLightLevel},${uiNearPlayer},${uiNearEntity},${uiPvp}]}`
    } else {
        uiBar = `titleraw @a actionbar {\"rawtext\":[{\"text\":\" ⨀ | loadisk: ${ver} | Minute: ${mtUI} Second: ${stUI} Tick: ${ltUI}"}]}`
    }
    v.runCommandAsync(
        uiBar
    );
}