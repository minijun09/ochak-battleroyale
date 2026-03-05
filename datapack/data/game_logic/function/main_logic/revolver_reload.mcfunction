#조건 안맞으면 리턴
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute unless score @s revolver_cooldown matches 0 run return fail
execute if score @s revolver_ammo = @s revolver_max_ammo run return fail
execute unless items entity @s container.* minecraft:copper_nugget[item_name={"text":".357 매그넘"}] run return fail

#재장전코드
scoreboard players add @s revolver_ammo 1
clear @s minecraft:copper_nugget[item_name={"text":".357 매그넘"}] 1
scoreboard players set @s revolver_cooldown 10