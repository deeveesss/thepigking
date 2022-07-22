# Target player always
data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[predicate=_tpk:root,sort=nearest] UUID

# High / low value checker
execute store result score %kings_y _tpk run data get entity @s Pos[1]
execute store result score %player_y _tpk run data get entity @p[predicate=_tpk:root,sort=nearest] Pos[1]

# Small spaces anti-suffocation hack
execute unless block ~ ~1 ~ #_tpk:pass unless data entity @s IsBaby run data modify entity @s IsBaby set value 1b
execute if block ~ ~1 ~ #_tpk:pass if data entity @s IsBaby run data remove entity @s IsBaby

# Item usage
execute if score %item_cd _tpk matches 0 run function _tpk:ai/use_item

# Influence mobs
execute if entity @p[distance=..64] if entity @e[type=#_tpk:teamup,distance=..16] run function _tpk:ai/make_safe

# Swap equipment 
execute if entity @p[sort=nearest,distance=..3] run function _tpk:ai/set_melee
execute if entity @p[sort=nearest,distance=4..16] run function _tpk:ai/set_ranged

# Water and lava
execute if predicate _tpk:ai/swim unless predicate _tpk:ai/riding run function _tpk:ai/swim
execute if predicate _tpk:ai/swim if predicate _tpk:ai/riding as @e[tag=_mount] at @s run function _tpk:ai/swim

# Move closer if out of range
execute if entity @p[predicate=_tpk:root,distance=17..63] unless predicate _tpk:ai/riding run function _tpk:ai/move_closer
execute if entity @p[predicate=_tpk:root,distance=17..63] if predicate _tpk:ai/riding as @e[tag=_mount] at @s run function _tpk:ai/move_closer

# Break closed doors
execute if block ^ ^1 ^1 #minecraft:doors[open=false] run setblock ^ ^1 ^1 minecraft:air destroy
execute if block ^ ^2 ^ #minecraft:trapdoors[open=false] run setblock ^ ^2 ^ minecraft:air destroy

# Hide if no player in range
execute unless entity @p[predicate=_tpk:root,distance=..64] run function _tpk:ai/hide
