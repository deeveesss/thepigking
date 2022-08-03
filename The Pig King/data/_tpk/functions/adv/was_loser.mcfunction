# Snark
function _tpk:snark/was_loser

# Reset to short timer for revenge
function _tpk:ai/spawn_fast

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

# Final Advancement
execute if score %gear_lvl _tpk matches 3 run advancement grant @s only _tpk:dis_final

# Revoke advancement for reapplication
advancement revoke @s only _tpk:was_loser
