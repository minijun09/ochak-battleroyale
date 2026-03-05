scoreboard players add @a max_range 0
scoreboard players add @a max_ammo 0
scoreboard players add @a ammo 0
scoreboard players add @a smoke_timer 0
scoreboard players add @e[tag=bullet] bullet_age 1
scoreboard players add @a cooldown 0

scoreboard players add @a revolver_cooldown 0
scoreboard players add @a revolver_ammo 0
scoreboard players set @a revolver_max_ammo 6
execute as @a if score @s revolver_cooldown matches 1.. run scoreboard players remove @s revolver_cooldown 1

scoreboard players add @a m4a1_cooldown 0
scoreboard players add @a m4a1_ammo 0
scoreboard players set @a m4a1_max_ammo 30
execute as @a if score @s m4a1_cooldown matches 1.. run scoreboard players remove @s m4a1_cooldown 1