# Keep going
execute unless block ~ ~1 ~ #_tpk:pass run function _tpk:ai/phase_check

# End conditions
execute if block ~ ~1 ~ #_tpk:pass run tp @s ~ ~ ~
execute if block ~ ~1 ~ #_tpk:pass at @s run playsound entity.illusioner.mirror_move ambient @a ~ ~ ~ 2 1 1
execute if block ~ ~1 ~ #_tpk:pass at @s run summon ender_pearl ^ ^2 ^ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.01,0.0],Tags:["_tpkstatus"],CustomName:'{"text":"Ender Pearl"}',Item:{id:"minecraft:ender_pearl",Count:1b}}
