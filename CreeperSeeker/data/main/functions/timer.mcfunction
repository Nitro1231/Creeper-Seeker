scoreboard players remove Seconds Game 1
execute if score Seconds Game matches 0 run title @a actionbar "GAME OVER"
execute if score Seconds Game matches 1.. run schedule function main:timer 1s