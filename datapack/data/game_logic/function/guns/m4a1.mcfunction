#조건 안맞으면 retun
execute if score @s m4a1_ammo matches 0 run return fail
execute unless score @s m4a1_cooldown matches 0 run return fail

#함수 실행
scoreboard players remove @s m4a1_ammo 1 
scoreboard players set @s m4a1_cooldown 2
function game_logic:main_logic/m4a1_use