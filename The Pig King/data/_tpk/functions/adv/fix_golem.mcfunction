# Fix the golem
execute at @s run effect give @e[type=iron_golem,distance=..3] regeneration 30 2 true
execute at @s as @e[type=iron_golem,distance=..3] at @s run particle heart ~ ~ ~ ~2 ~2 ~2 0.75 50 normal @a
execute at @s as @e[type=iron_golem,distance=..3] run data modify entity @s PlayerCreated set value 1b
execute at @s as @e[type=iron_golem,distance=..3] run data remove entity @s NoAI

# Revoke advancement for reapplication
advancement revoke @s only _tpk:fix_golem
