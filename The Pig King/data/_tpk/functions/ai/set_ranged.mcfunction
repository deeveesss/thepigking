# Gear Tier 0
execute unless entity @s[predicate=_tpk:ai/has_bow] if score %gear_lvl _tpk matches 0 run item replace entity @s weapon.mainhand with crossbow

# Gear Tier 1
execute unless entity @s[predicate=_tpk:ai/has_bow] if score %gear_lvl _tpk matches 1 run item replace entity @s weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],Charged:1b}

# Gear Tier 2
execute unless entity @s[predicate=_tpk:ai/has_bow] if score %gear_lvl _tpk matches 2 run item replace entity @s weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:quick_charge",lvl:2s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:weakness"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison"}}],Charged:1b}

# Gear Tier 3
execute unless entity @s[predicate=_tpk:ai/has_bow] if score %gear_lvl _tpk matches 3 run item replace entity @s weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:quick_charge",lvl:3s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_weakness"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison"}}],Charged:1b}

# Remove Shield
execute if score %gear_lvl _tpk matches 1.. if entity @s[predicate=_tpk:ai/eff_shield] run item replace entity @s weapon.offhand with air
execute if score %gear_lvl _tpk matches 1.. if entity @s[predicate=_tpk:ai/eff_shield] run effect clear @s resistance

# No dropping
data modify entity @s HandDropChances set value [-327.670F,-327.670F]
