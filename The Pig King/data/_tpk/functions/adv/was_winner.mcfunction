# Win message
tellraw @a "<The Pig King> gg ez"

# Reset to long timer for a break
function _tpk:ai/spawn_slow

# Revoke advancement for reapplication
advancement revoke @s only _tpk:was_winner

# Stop (hide function includes respawn cd)
execute as @e[tag=_tpk] at @s unless entity @p[predicate=_tpk:root,distance=..64] run function _tpk:ai/stop
