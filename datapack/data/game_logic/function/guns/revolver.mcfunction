#조건 안맞으면 retun
execute if score @s revolver_ammo matches 0 run return fail
execute unless score @s revolver_cooldown matches 0 run return fail

#함수 실행
scoreboard players remove @s revolver_ammo 1 
scoreboard players set @s revolver_cooldown 10
function game_logic:main_logic/revolver_use