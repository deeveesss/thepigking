# Stop
execute if predicate _tpk:ai/riding run tp @e[tag=_mount] ~ -256 ~
tag @s remove _tpk
tp @s ~ -256 ~
kill @s

# Kill misc
kill @e[tag=_tpkstatus]
