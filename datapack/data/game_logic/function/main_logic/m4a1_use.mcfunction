# 1. 마커 소환
execute at @s run summon minecraft:block_display ~ ~ ~ {Tags:["bullet","new_bullet"],block_state:{Name:"minecraft:stone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.01f,0.01f,0.01f]}}
execute at @s as @e[tag=new_bullet] run tp @s ~ ~1.5 ~ ~ ~

# 2. 소환된 해당 마커에게 방향 복사 및 본인만의 점수 부여
scoreboard players set @e[tag=new_bullet] max_range 50
scoreboard players set @e[tag=new_bullet] bullet_age 3
# 3. 태그 정리 및 루프 시작
tag @e[tag=new_bullet] remove new_bullet
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 2
execute as @e[tag=bullet] at @s run function game_logic:main_logic/m4a1_raycast_loop

#총기 반동 세팅
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run tp @s ~ ~ ~ ~ ~-10