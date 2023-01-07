import { world} from "@minecraft/server";
export function cmdHandler () {
    world.events.beforeChat.subscribe(async (eventData) => {
        const player = eventData.sender;
        switch (eventData.message) {
            case '!gmc':
                eventData.cancel = true;
                await player.runCommandAsync('gamemode c');
                break;
            case '!gms':
                eventData.cancel = true;
                await player.runCommandAsync('gamemode s');
                break;
            default: break;
        }
    });
}