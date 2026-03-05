execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s ammo = @s m4a1_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s max_ammo = @s m4a1_max_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s cooldown = @s m4a1_cooldown
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s ammo = @s revolver_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s max_ammo = @s revolver_max_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s cooldown = @s revolver_cooldown

execute as @a unless items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run return fail
execute as @a if score @s cooldown matches 1.. if items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run title @s actionbar [{"text":"[","color":"gray"},{"text":"쿨타임중...","color":"gray"},{"text":"]","color":"gray"}]
execute as @a if score @s cooldown matches 1.. if items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run return fail
execute as @a if score @s ammo = @s max_ammo run title @s actionbar [{"text":"[ ","color":"green"},{"score":{"name":"@s","objective":"ammo"},"color":"green"},{"text":" / ","color":"green"},{"score":{"name":"@s","objective":"max_ammo"},"color":"green"},{"text":" ]","color":"green"}]
execute as @a if score @s ammo < @s max_ammo unless score @s ammo matches 0 run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"ammo"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"max_ammo"},"color":"gold"},{"text":" ]","color":"gold"}]
execute as @a if score @s ammo matches 0 run title @s actionbar [{"text":"[ ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"ammo"},"color":"red"},{"text":" / ","color":"dark_red"},{"score":{"name":"@s","objective":"max_ammo"},"color":"red"},{"text":" ]","color":"dark_red","bold":true}]
