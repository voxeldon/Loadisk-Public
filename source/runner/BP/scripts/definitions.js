import { world } from "@minecraft/server";
export { world } from "@minecraft/server";
export const ver = "1.0.0";
export const initTime = 100;
export const ram = "@e [type=loadisk:ram]";
export const v = world.getDimension("overworld");

export class colorCode {
    constructor (){
        const redDark = '§4'
        const red = '§c'
        const gold = '§6'
        const yellow = '§e'
        const greenDark = '§2'
        const green = '§a'
        const aqua = '§b'
        const aquaDark = '§3'
        const blueDark = '§1'
        const blue = '§9'
        const purple = '§d'
        const purpleDark = '§5'
        const white = '§f'
        const gray = '§7'
        const grayDark = '§8'
        const black = '§0'
        const obscure = '§k'
        const bold = '§l'
        const strike = '§m'
        const underline = '§n'
        const italic = '§o'
        const reset = '§r'
    }
}