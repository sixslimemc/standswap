#> standswap:_/player/on_sneak
#--------------------
# _/adv/sneak
#--------------------

execute anchored feet positioned ^ ^0.2 ^1 store result score *x _standswap run tag @n[type=armor_stand, tag=!standswap.ignore, tag=!_, distance=..0.5] add _standswap.swap_stand

execute if score *x _standswap matches 1.. run function standswap:_/player/swap/trigger