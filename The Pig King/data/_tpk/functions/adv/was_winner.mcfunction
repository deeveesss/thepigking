# Win message
tellraw @a "<The Pig King> gg ez"

# Reset to long timer for a break
execute store result score %king_cd _tpk run loot spawn ~ ~ ~ loot _tpk:spawn/long

# Revoke advancement for reapplication
advancement revoke @s only _tpk:was_winner

# Stop (hide function includes respawn cd)
execute as @e[tag=_tpk] at @s run function _tpk:ai/stop
