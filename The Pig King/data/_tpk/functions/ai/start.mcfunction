# Reset item cooldown, adjust gear for appropriate story progression
scoreboard players set %item_cd _tpk 0
scoreboard players set %gear_lvl _tpk 0
execute if entity @p[sort=nearest,predicate=_tpk:ai/got_iron] run scoreboard players add %gear_lvl _tpk 1
execute if entity @p[sort=nearest,predicate=_tpk:ai/got_diamond] run scoreboard players add %gear_lvl _tpk 1
execute if entity @p[sort=nearest,predicate=_tpk:ai/got_netherite] run scoreboard players add %gear_lvl _tpk 1

# Set closest non-hostile as target
tag @e[type=#_tpk:mobs,distance=..14,sort=nearest,limit=1] add _newtpk

# Summon The Pig King
execute at @e[tag=_newtpk] if score %random _tpk matches 6..100 run summon piglin ~ ~ ~ {DeathLootTable:"_tpk:null",PersistenceRequired:1b,Health:20f,IsImmuneToZombification:1b,Tags:["_tpk"],CustomName:'{"text":"The Pig King"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:256},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6645093},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11274505},Unbreakable:1b}},{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:1,Amplifier:1b,Duration:100},{Id:8,Amplifier:1b,Duration:100}],Attributes:[{Name:"generic.max_health",Base:20}]}

execute at @e[tag=_newtpk] if score %random _tpk matches 1..5 run summon pig ~ ~ ~ {Saddle:1b,Tags:["_mount"],Passengers:[{id:"minecraft:piglin",DeathLootTable:"_tpk:null",PersistenceRequired:1b,Health:20f,IsImmuneToZombification:1b,Tags:["_tpk"],CustomName:'{"text":"The Pig King"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:256},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6645093},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11274505},Unbreakable:1b}},{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:1,Amplifier:1b,Duration:100},{Id:8,Amplifier:1b,Duration:100}],Attributes:[{Name:"generic.max_health",Base:20}]}],Attributes:[{Name:"generic.knockback_resistance",Base:5},{Name:"generic.movement_speed",Base:0.34}]}

# Handle target mob
execute as @e[tag=_newtpk] run tag @s remove _newtpk

# Set armor
execute if score %gear_lvl _tpk matches 1.. as @e[tag=_tpk] at @s run function _tpk:ai/set_armor

# Effects
execute at @e[tag=_tpk] run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 5 0.85 1
execute as @e[tag=_tpk] at @p[sort=nearest,predicate=_tpk:root] run summon area_effect_cloud ~ ~7 ~ {Particle:"block redstone_block",Radius:10f,Duration:200}

# No farming
execute as @e[tag=_tpk] run function _tpk:ai/spawn_fast

# Snark
execute as @e[tag=_tpk] run function _tpk:snark/start
