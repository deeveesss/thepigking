# Gear Tier 1
execute if score %gear_lvl _tpk matches 1 run item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:respiration",lvl:1s},{id:"minecraft:thorns",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}
execute if score %gear_lvl _tpk matches 1 run item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:thorns",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}
execute if score %gear_lvl _tpk matches 1 run item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:thorns",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}
execute if score %gear_lvl _tpk matches 1 run item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:depth_strider",lvl:1s},{id:"minecraft:soul_speed",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}

# Gear Tier 2
execute if score %gear_lvl _tpk matches 2 run item replace entity @s armor.head with diamond_helmet{Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:respiration",lvl:2s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}
execute if score %gear_lvl _tpk matches 2 run item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}
execute if score %gear_lvl _tpk matches 2 run item replace entity @s armor.legs with diamond_leggings{Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}
execute if score %gear_lvl _tpk matches 2 run item replace entity @s armor.feet with diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:soul_speed",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}

# Gear Tier 3
execute if score %gear_lvl _tpk matches 3 run item replace entity @s armor.head with netherite_helmet{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}
execute if score %gear_lvl _tpk matches 3 run item replace entity @s armor.chest with netherite_chestplate{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}
execute if score %gear_lvl _tpk matches 3 run item replace entity @s armor.legs with netherite_leggings{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}
execute if score %gear_lvl _tpk matches 3 run item replace entity @s armor.feet with netherite_boots{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:depth_strider",lvl:3s},{id:"minecraft:soul_speed",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}

# No dropping
data modify entity @s ArmorDropChances set value [-327.670F,-327.670F,-327.670F,-327.670F]
