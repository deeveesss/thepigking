# Fix dead entities to friendlies
tag @e[type=#_tpk:revive,distance=..16] add _tpkrevive
execute as @e[type=zombified_piglin,distance=..16] at @s run summon piglin ^ ^ ^ {IsImmuneToZombification:1b}
execute as @e[type=zoglin,distance=..16] at @s run summon pig ^ ^ ^
execute at @e[tag=_tpkrevive] run particle end_rod ~ ~ ~ ~3 ~3 ~3 0.75 100 normal @a
tp @e[tag=_tpkrevive] ~ -256 ~
kill @e[tag=_tpkrevive]

# His influence is wide
execute as @e[type=iron_golem,distance=..16] run data modify entity @s NoAI set value 1b
execute as @e[type=wolf,distance=..16] unless data entity @s Owner run data modify entity @s AngerTime set value 200
execute as @e[type=wolf,distance=..16] unless data entity @s Owner run data modify entity @s AngryAt set from entity @p[predicate=_tpk:root,sort=nearest] UUID
