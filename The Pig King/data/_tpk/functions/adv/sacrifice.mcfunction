# Snark
function _tpk:snark/sacrifice

# Effects
execute at @s run summon lightning_bolt ~ ~ ~
execute at @s run playsound entity.piglin.celebrate ambient @s ~ ~ ~ 5 1 1
kill @s
