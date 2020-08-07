execute as @e[type=minecraft:creeper,tag=!found,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players add Find Game 1
execute as @e[type=minecraft:creeper,tag=!found,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run title @a title "ㅊㅊ!"
execute as @e[type=minecraft:creeper,tag=!found,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s minecraft:glowing 999999 10 true
execute as @e[type=minecraft:creeper,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add found

scoreboard players remove int target 1
execute if score int target matches 0 run give @p minecraft:creeper_head{display: {Name: '[{"text":"Creeper Seeker"}]'}} 1
execute if score int target matches 1.. run execute positioned ^ ^ ^1 run function pointer:target_timer