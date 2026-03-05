execute if score @s max_range matches ..47 run particle smoke ~ ~ ~ 0 0 0 0.01 1
execute if score @s bullet_age matches 1.. run scoreboard players remove @s bullet_age 1

#앞으로 이동
tp @s ^ ^ ^0.4

#주변몹 감지 및 데미지
execute if score @s bullet_age matches 0 positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#game_logic:not_mob,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run damage @s 1 minecraft:arrow by @p
execute if score @s bullet_age matches 0 positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#game_logic:not_mob,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run kill @p[tag=bullet]

#벽 감지
execute unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute unless entity @s run return 1

#최대 사거리 감지
execute if score @s max_range matches 1.. run scoreboard players remove @s max_range 1
execute if score @s max_range matches 1.. if entity @s at @s run function game_logic:main_logic/revolver_raycast_loop
execute if score @s max_range matches ..0 run kill @s
execute if score @s max_range matches ..0 run return 1