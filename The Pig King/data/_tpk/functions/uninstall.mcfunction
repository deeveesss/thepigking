# Stop loop
schedule clear _tpk:loop

# Kill associated entities
kill @e[tag=_tpkstatus]
tp @e[tag=_mount] ~ -256 ~
tp @e[tag=_tpk] ~ -256 ~
tag @e[tag=_tpk] remove _tpk

# Remove scoreboard and vars
scoreboard players reset %random
scoreboard players reset %item_cd
scoreboard players reset %king_cd
scoreboard players reset %king_hp
scoreboard players reset %kings_y
scoreboard players reset %player_y
scoreboard players reset %gear_lvl
scoreboard objectives remove _tpk

# Snark
tellraw @a "<The Pig King> i am pig. you? chicken."
tellraw @a ["",{"text":"[datapack] "},{"text":"The Pig King ","color":"gold"},{"text":"uninstalled!"}]
