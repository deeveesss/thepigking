# Arbitrary cooldown for load balance
scoreboard players set %item_cd _tpk 2
execute store result score %king_hp _tpk run data get entity @s Health

# "Run away" to use item
execute if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] facing entity @p[sort=nearest] feet if block ^ ^ ^-1.5 #_tpk:pass run tp @s ^ ^ ^-1.5

# Gear Tier 0
execute if score %gear_lvl _tpk matches 0 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run summon ender_pearl ^ ^2 ^ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.01,0.0],Tags:["_tpkstatus"],CustomName:'{"text":"Potato"}',Item:{id:"minecraft:potato",Count:1b}}
execute if score %gear_lvl _tpk matches 0 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s regeneration 5 0 false

# Gear Tier 1
execute if score %gear_lvl _tpk matches 1 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run summon ender_pearl ^ ^2 ^ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.01,0.0],Tags:["_tpkstatus"],CustomName:'{"text":"Cooked Beef"}',Item:{id:"minecraft:cooked_beef",Count:1b}}
execute if score %gear_lvl _tpk matches 1 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s regeneration 7 0 false

# Gear Tier 2
execute if score %gear_lvl _tpk matches 2 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run summon ender_pearl ^ ^2 ^ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.01,0.0],Tags:["_tpkstatus"],CustomName:'{"text":"Golden Apple"}',Item:{id:"minecraft:golden_apple",Count:1b}}
execute if score %gear_lvl _tpk matches 2 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s absorption 120 1 false
execute if score %gear_lvl _tpk matches 2 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s regeneration 5 1 false

# Gear Tier 3
execute if score %gear_lvl _tpk matches 3 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run summon ender_pearl ^ ^2 ^ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.01,0.0],Tags:["_tpkstatus"],CustomName:'{"text":"Enchanted Apple"}',Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}
execute if score %gear_lvl _tpk matches 3 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s fire_resistance 300 0 false
execute if score %gear_lvl _tpk matches 3 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s resistance 300 0 false
execute if score %gear_lvl _tpk matches 3 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s absorption 120 4 false
execute if score %gear_lvl _tpk matches 3 if score %king_hp _tpk matches ..19 unless entity @s[predicate=_tpk:ai/eff_food] run effect give @s regeneration 20 1 false
