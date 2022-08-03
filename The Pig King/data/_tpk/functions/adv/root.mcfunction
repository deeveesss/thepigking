# Snark
function _tpk:snark/root

# Make spawn
execute unless score %king_cd _tpk matches 1.. run function _tpk:ai/spawn_fast

# Spooky stuff
execute at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 100 1 1
weather thunder 1200
