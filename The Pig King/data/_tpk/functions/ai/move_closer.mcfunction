# Face player direction
tp @s ~ ~ ~ facing entity @p[predicate=_tpk:root,sort=nearest] eyes

# Correction for lower players
execute if score %player_y _tpk < %kings_y _tpk at @s run summon marker ^ ^ ^10 {Tags:["_tpkdir"]}
data modify entity @e[tag=_tpkdir,limit=1] Pos[1] set from entity @s Pos[1]
execute if score %player_y _tpk < %kings_y _tpk at @s run tp @s ~ ~ ~ facing entity @e[tag=_tpkdir,limit=1]
execute if score %player_y _tpk < %kings_y _tpk at @s run kill @e[tag=_tpkdir]

# Jump if needed
execute at @s unless block ^ ^ ^1 #_tpk:pass run function _tpk:ai/jump

# Move forward x3
execute at @s if block ^ ^1 ^1 #_tpk:pass if block ^ ^ ^1 #_tpk:pass run tp @s ^ ^ ^1
execute at @s if block ^ ^1 ^1 #_tpk:pass if block ^ ^ ^1 #_tpk:pass run tp @s ^ ^ ^1
execute at @s if block ^ ^1 ^1 #_tpk:pass if block ^ ^ ^1 #_tpk:pass run tp @s ^ ^ ^1

# Phase if next block isn't jumpable
execute at @s unless block ^ ^ ^1 #_tpk:pass run function _tpk:ai/phase_check
