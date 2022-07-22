# Initiate recusion
schedule function _tpk:loop 1s

# Adjust global variables
execute if score %king_cd _tpk matches 1.. run scoreboard players remove %king_cd _tpk 1
execute if score %item_cd _tpk matches 1.. run scoreboard players remove %item_cd _tpk 1

# Remove extras
execute if entity @e[tag=_tpkstatus] run kill @e[tag=_tpkstatus]
execute unless entity @e[tag=_tpk] run tp @e[tag=_mount] ~ -256 ~

# Run AI functions if present
execute if entity @e[tag=_tpk] as @e[tag=_tpk] at @s run function _tpk:ai/brain

# Appear if not spawned
execute unless entity @e[tag=_tpk] if score %king_cd _tpk matches 0 as @r[predicate=_tpk:root] at @s if entity @e[predicate=_tpk:mob] run function _tpk:ai/start
