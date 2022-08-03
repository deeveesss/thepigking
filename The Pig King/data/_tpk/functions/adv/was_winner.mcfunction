# Win message
function _tpk:snark/was_winner

# Reset to long timer for a break
function _tpk:ai/spawn_slow

# Check for other (alive) players
tag @s add _dead
execute as @e[tag=_tpk] at @s unless entity @p[tag=!_dead,predicate=_tpk:root,distance=..64] run function _tpk:ai/stop
tag @s remove _dead

# Revoke advancement for reapplication
advancement revoke @s only _tpk:was_winner
