#> standswap:_/player/swap/trigger
#--------------------
# ./trigger
#--------------------

# head:
item replace entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0 from entity @s armor.head
item replace entity @s armor.head from entity @p[tag=_standswap.swap_player] armor.head
item replace entity @p[tag=_standswap.swap_player,distance=..0.1] armor.head from entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0

# chest:
item replace entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0 from entity @s armor.chest
item replace entity @s armor.chest from entity @p[tag=_standswap.swap_player] armor.chest
item replace entity @p[tag=_standswap.swap_player,distance=..0.1] armor.chest from entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0

# legs:
item replace entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0 from entity @s armor.legs
item replace entity @s armor.legs from entity @p[tag=_standswap.swap_player] armor.legs
item replace entity @p[tag=_standswap.swap_player,distance=..0.1] armor.legs from entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0

# feet:
item replace entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0 from entity @s armor.feet
item replace entity @s armor.feet from entity @p[tag=_standswap.swap_player] armor.feet
item replace entity @p[tag=_standswap.swap_player,distance=..0.1] armor.feet from entity @n[type=item_display,tag=_standswap.swap_temp,distance=..0.1] container.0

execute at @s run playsound minecraft:block.shelf.place_item player @a ~ ~ ~ 1 1.4
damage @s 0.5 player_attack by @p[gamemode=!creative,tag=_standswap.swap_player,distance=..0.1]

tag @s remove _standswap.swap_stand
