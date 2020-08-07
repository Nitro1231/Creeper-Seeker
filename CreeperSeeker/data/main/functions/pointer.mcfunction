execute as @e[tag=s4,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s minecraft:glowing 1 1 true
execute positioned ^ ^ ^1 if block ~ ~ ~ air run function stage4:target