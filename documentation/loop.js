let vX = 0
let vY = 16
const maxChunk = 200

for (let i = 0; i < maxChunk; i++) {
    vX += 16;
    vY += 16;
    console.log(`execute at @a[x=${vX},y=~,z=${vX},dx=${vY},dy=1,dz=${vY}] if entity @e[type=loadisk:ram,tag=!${vX}_${vY}] run function root/system/generation/generate`)
    console.log(`execute at @a[x=${vX},y=~,z=${vX},dx=${vY},dy=1,dz=${vY}] if entity @e[type=loadisk:ram,tag=!${vX}_${vY}] run tag @e[type=loadisk:ram] add ${vX}_${vY}`)
  }