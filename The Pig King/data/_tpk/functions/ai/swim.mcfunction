# Swim Up
execute if score %player_y _tpk >= %kings_y _tpk run function _tpk:ai/jump

# Swim Down
execute if score %player_y _tpk < %kings_y _tpk if block ~ ~-1 ~ #_tpk:pass run tp @s ~ ~-1 ~ 

# Move Forward
tp @s ~ ~ ~ facing entity @p[predicate=_tpk:root,sort=nearest] feet
execute at @s if block ^ ^1 ^1 #_tpk:pass if block ^ ^ ^1 #_tpk:pass run tp @s ^ ^ ^1
execute at @s if block ^ ^1 ^1 #_tpk:pass if block ^ ^ ^1 #_tpk:pass run tp @s ^ ^ ^1
