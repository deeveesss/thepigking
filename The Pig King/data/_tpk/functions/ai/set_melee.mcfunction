# Gear Tier 0
execute unless entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_sword] if score %gear_lvl _tpk matches 0 run item replace entity @e[tag=_tpk] weapon.mainhand with stone_sword

execute if entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_axe] if score %gear_lvl _tpk matches 0 run item replace entity @e[tag=_tpk] weapon.mainhand with stone_axe

# Gear Tier 1
execute unless entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_sword] if score %gear_lvl _tpk matches 1 run item replace entity @s weapon.mainhand with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:sweeping",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}

execute if entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_axe] if score %gear_lvl _tpk matches 1 run item replace entity @s weapon.mainhand with iron_axe{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:efficiency",lvl:3s},{id:"minecraft:unbreaking",lvl:1s}]}

# Gear Tier 2
execute unless entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_sword] if score %gear_lvl _tpk matches 2 run item replace entity @s weapon.mainhand with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:sweeping",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}

execute if entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_axe] if score %gear_lvl _tpk matches 2 run item replace entity @s weapon.mainhand with diamond_axe{Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:efficiency",lvl:4s},{id:"minecraft:unbreaking",lvl:2s}]}

# Gear Tier 3
execute unless entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_sword] if score %gear_lvl _tpk matches 3 run item replace entity @s weapon.mainhand with netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:sweeping",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}

execute if entity @p[predicate=_tpk:ai/need_axe] unless entity @s[predicate=_tpk:ai/has_axe] if score %gear_lvl _tpk matches 3 run item replace entity @s weapon.mainhand with netherite_axe{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:efficiency",lvl:5s},{id:"minecraft:unbreaking",lvl:3s}]}

# Shield
execute if score %gear_lvl _tpk matches 1.. unless entity @s[predicate=_tpk:ai/eff_shield] run item replace entity @s weapon.offhand with shield{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}
execute if score %gear_lvl _tpk matches 1.. unless entity @s[predicate=_tpk:ai/eff_shield] run effect give @s resistance 99999 0 false

# No dropping
data modify entity @s HandDropChances set value [-327.670F,-327.670F]
