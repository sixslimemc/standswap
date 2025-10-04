#> standswap:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _standswap dummy

execute unless score *init _standswap matches 1 run function standswap:_/init
scoreboard players set *init _standswap 1
