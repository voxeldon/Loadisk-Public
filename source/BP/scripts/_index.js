import { system} from "@minecraft/server";
import { uiManager } from './utils/uiManager.js';
import { clock } from './utils/clock.js';
import { ver, initTime, ram , v } from './definitions.js';

let curTick = 0;

function index() {
    system.run(uiManager);
    system.run(clock);
    system.run(tick);
}
function init() {
    try {
        v.runCommandAsync(`tellraw @a {\"rawtext\":[{\"text\":\" ⨀ | §6Loadisk: v.${ver}\"}]}`);
        v.runCommandAsync('function root/class/variables');
        v.runCommandAsync('execute if score Init var = Init const run /function cmd/spawn.cmd_room');
        v.runCommandAsync('execute if score Init var = Init const run /summon loadisk:ram 14 -60 14');
        v.runCommandAsync('scoreboard players set Init var 1');
        v.runCommandAsync(`execute as ${ram} run function root/class/v.localize`);
    } catch (e) { }
}
function tick() {
    try {if (curTick === initTime) {init();}curTick++;} 
    catch (e) {console.warn("Tick error: " + e);}
    v.runCommandAsync("function _index");
    system.run(index);
}
system.run(index);