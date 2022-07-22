# create scoreboard master and variables
scoreboard objectives add _tpk dummy

# Initiate loop
function _tpk:loop

# Load message
tellraw @a ["",{"text":"[datapack] "},{"text":"The Pig King ","color":"gold"},{"text":"loaded!"}]
