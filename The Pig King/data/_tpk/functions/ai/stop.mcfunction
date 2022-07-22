# Remove tag
tag @s[tag=_tpk] remove _tpk

# Hide
execute if predicate _tpk:ai/riding run tp @e[tag=_mount] ~ -256 ~
tp @s ~ -256 ~
kill @s
