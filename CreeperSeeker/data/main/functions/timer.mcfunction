scoreboard players remove seconds Timer 1
execute if score seconds Timer matches 0 run title @a actionbar "GAME OVER"
execute if score seconds Timer matches 1.. run schedule function main:timer 1s