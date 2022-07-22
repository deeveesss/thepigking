# create scoreboard master and variables
scoreboard objectives add _tpk dummy
execute unless score %item_cd _tpk matches 1.. run scoreboard players set %item_cd _tpk 0

# Initiate loop
function _tpk:loop

# Load message
tellraw @a ["",{"text":"[datapack] "},{"text":"The Pig King ","color":"gold"},{"text":"loaded!"}]
