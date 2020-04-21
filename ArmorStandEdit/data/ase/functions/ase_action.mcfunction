# Called from main as every player that triggers the armor stand trigger
tag @s add ase_selected_player
execute if score @s ase_trigger matches 10.. run function ase:get_selected
execute if score @s ase_trigger matches 101 run effect give @e[tag=ase_selected_stand] minecraft:glowing 3 0 true
execute if score @s ase_trigger matches 101 run effect give @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] minecraft:glowing 3 0 true
execute if score @s ase_trigger matches 101 run scoreboard players operation @s ase_id = @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ase_id
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_id 0
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoGravity:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoGravity:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Invisible:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Invisible:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {CustomNameVisible:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {CustomNameVisible:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {ShowArms:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {ShowArms:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Small:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Small:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoBasePlate:0b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoBasePlate:1b}
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[1] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[2] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Rotation[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Rotation[0] 1
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 101 run scoreboard players remove @s ase_step 15
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players remove @s ase_step 5
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players remove @s ase_step 1
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players add @s ase_step 1
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players add @s ase_step 5
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players add @s ase_step 15
execute if score @s ase_trigger matches 101 run function ase:do_step_checks
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 1
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 5
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 15
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 45
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 90
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 180
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run scoreboard players set @s ase_step 270
execute if score @s ase_trigger matches 101 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.5 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.25 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.0625 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.0625 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.25 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.5 ~ ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.5 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.25 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.0625 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.0625 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.25 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.5 ~
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.5
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.25
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.0625
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.0625
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.25
execute if score @s ase_trigger matches 101 run execute as @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.5
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] HandItems[0].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] HandItems[0] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] HandItems[1].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] HandItems[1] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[3].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[3] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[2].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[2] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[1].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[1] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
execute if score @s ase_trigger matches 101 run execute if data entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[0].id run tag @p add objd_isTrue0
execute if score @s ase_trigger matches 101 run execute as @p if entity @s[tag=objd_isTrue0] run title @s actionbar [{"text":"This stand already has something in his Mainhand","color":"red"}]
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run data modify entity @e[limit=1,type=minecraft:armor_stand,tag=ase_selected_stand] ArmorItems[0] merge from entity @s SelectedItem
execute if score @s ase_trigger matches 101 run execute as @p unless entity @s[tag=objd_isTrue0] run replaceitem entity @s weapon.mainhand minecraft:air 
execute if score @s ase_trigger matches 101 run tag @p remove objd_isTrue0
tag @s remove ase_selected_player
tag @e[tag=ase_selected_stand] remove ase_selected_stand
scoreboard players set @s ase_trigger 0