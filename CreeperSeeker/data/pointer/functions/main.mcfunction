execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:creeper_head"}]}] run scoreboard players set @s check 1
execute if score @s check matches 1 run scoreboard players remove Opportunity Game 1
execute if score @s check matches 1 run scoreboard players add Used Game 1
execute if score @s check matches 1 run clear @s minecraft:creeper_head{display: {Name: '[{"text":"Creeper Seeker"}]'}}
execute if score @s check matches 1 run function pointer:target
scoreboard players set @s check 0