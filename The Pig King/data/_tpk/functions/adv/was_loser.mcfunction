# Lose message
tellraw @a ["",{"text":"The Pig King was defeated by "},{"selector":"@s"},{"text":"!"}]
tellraw @a "<The Pig King> ok"

# Reset to short timer for revenge
function _tpk:ai/spawn_fast

# Revoke advancement for reapplication
advancement revoke @s only _tpk:was_loser

# Loot per tier
execute if score %gear_lvl _tpk matches 0.. run loot spawn ~ ~ ~ loot _tpk:loot/base
execute if score %gear_lvl _tpk matches 1.. run loot spawn ~ ~ ~ loot _tpk:loot/iron
execute if score %gear_lvl _tpk matches 2.. run loot spawn ~ ~ ~ loot _tpk:loot/diamond
execute if score %gear_lvl _tpk matches 3 run loot spawn ~ ~ ~ loot _tpk:loot/netherite

# Experience per tier
execute if score %gear_lvl _tpk matches 0 run experience add @s 5 levels
execute if score %gear_lvl _tpk matches 1 run experience add @s 10 levels
execute if score %gear_lvl _tpk matches 2 run experience add @s 15 levels
execute if score %gear_lvl _tpk matches 3 run experience add @s 20 levels
