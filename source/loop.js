let vX = 0
let vY = 16
const maxChunk = 16

for (let i = 0; i < maxChunk; i++) {
    vX += 1;
    console.log(`
    "set.biome${vX}": {
      "on_entry": ["/scoreboard players set @s v.biome ${vX}"],
      "on_exit": ["/scoreboard players set @s t.biome 0"],
      "transitions": [{"state_filter": "q.property('loadisk:biome') != ${vX}"}]
    },
    `)
  }