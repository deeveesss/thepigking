# Make spawn
execute unless score %king_cd _tpk matches 1.. run function _tpk:ai/spawn_fast

# Spooky stuff
execute at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 100 1 1
weather thunder 1200

# Snark
tellraw @a ["",{"text":"<The Pig King> so, you like picking on pigs "},{"selector":"@s"},{"text":"?"}]
