#> standswap:_/player/swap/trigger
#--------------------
# ../on_sneak
#--------------------
# swapping stand has tag '.swap_stand'

tag @s add _standswap.swap_player
execute at @s run summon item_display ~ ~ ~ {Tags:["_standswap.swap_temp"]}

execute anchored feet positioned ^ ^0.2 ^1 as @n[type=armor_stand, tag=_standswap.swap_stand, distance=..0.5] positioned ^ ^-0.2 ^-1 run function standswap:_/player/swap/stand

kill @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1]
tag @s add _standswap.swap_stand