# Adjust global variables
execute if score %king_cd _tpk matches 1.. run scoreboard players remove %king_cd _tpk 1
execute if score %item_cd _tpk matches 1.. run scoreboard players remove %item_cd _tpk 1

# Randomness cycle
execute if score %random _tpk matches 1..100 run scoreboard players remove %random _tpk 1
execute unless score %random _tpk matches 1..100 run scoreboard players set %random _tpk 100

# Var init for previous versions (debug)
execute unless score %king_cd _tpk matches 0.. run scoreboard players set %%king_cd _tpk 0
