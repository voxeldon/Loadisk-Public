##----------------------------------------------------------------------------
## Actionbar UI : Info display.
##----------------------------------------------------------------------------
#Debug player action inputs
execute as @a[tag=debug.action] run titleraw @s actionbar {"rawtext":[{"translate":"debug.idle","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.idle"}}]}},{"translate":"debug.move","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.move"}}]}},{"translate":"debug.sprint","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.sprint"}}]}},{"translate":"debug.swim","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.swim"}}]}},{"translate":"debug.sneak","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.sneak"}}]}},{"translate":"debug.jump","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.jump"}}]}},{"translate":"debug.ride","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.ride"}}]}},{"translate":"debug.left","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.left"}}]}},{"translate":"debug.right","with":{"rawtext":[{"selector":"@s"},{"score":{"name":"@s","objective":"v.right"}}]}}]}