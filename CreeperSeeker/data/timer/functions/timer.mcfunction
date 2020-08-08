scoreboard players remove Sec Timer 1
execute if score Sec Timer matches 0 if score Min Timer matches 1.. run scoreboard players set set Timer 1
execute if score set Timer matches 1 run scoreboard players remove Min Timer 1
execute if score set Timer matches 1 run scoreboard players set Sec Timer 59
execute if score Sec Timer matches ..9 run scoreboard players set tenth Timer 1
execute if score Sec Timer matches 10.. run scoreboard players set tenth Timer 0
scoreboard players set set Timer 0

execute if score tenth Timer matches 1 run title @a actionbar ["Time ", {"score":{"name":"Min","objective":"Timer"}},":0",{"score":{"name":"Sec","objective":"Timer"}}]
execute if score tenth Timer matches 0 run title @a actionbar ["Time ", {"score":{"name":"Min","objective":"Timer"}},":",{"score":{"name":"Sec","objective":"Timer"}}]
execute if score Sec Timer matches 0 if score Min Timer matches 0 run title @a title "Game Over"
execute if score Sec Timer matches 0 if score Min Timer matches 0 run title @a subtitle ["Find ",{"score":{"name":"Find","objective":"Game"}}, " out of ", {"score":{"name":"Total","objective":"Game"}}]
execute if score Sec Timer matches 1.. run schedule function timer:timer 1s