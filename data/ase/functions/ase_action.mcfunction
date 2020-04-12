# Called from main as every player that triggers the armor stand trigger
tag @s add ase_selected_player
execute if score @s ase_trigger matches 10.. run function ase:get_selected
execute if score @s ase_trigger matches 10 run effect give @e[tag=ase_selected_stand] minecraft:glowing 3 0 true
execute if score @s ase_trigger matches 11 run effect give @e[type=minecraft:armor_stand,tag=ase_selected_stand] minecraft:glowing 3 0 true
execute if score @s ase_trigger matches 11 run scoreboard players operation @s ase_id = @e[type=minecraft:armor_stand,tag=ase_selected_stand] ase_id
execute if score @s ase_trigger matches 12 run scoreboard players set @s ase_id 0
execute if score @s ase_trigger matches 20 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoGravity:0b}
execute if score @s ase_trigger matches 21 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoGravity:1b}
execute if score @s ase_trigger matches 22 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Invisible:1b}
execute if score @s ase_trigger matches 23 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Invisible:0b}
execute if score @s ase_trigger matches 24 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {CustomNameVisible:1b}
execute if score @s ase_trigger matches 25 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {CustomNameVisible:0b}
execute if score @s ase_trigger matches 26 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {ShowArms:1b}
execute if score @s ase_trigger matches 27 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {ShowArms:0b}
execute if score @s ase_trigger matches 28 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Small:1b}
execute if score @s ase_trigger matches 29 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {Small:0b}
execute if score @s ase_trigger matches 30 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoBasePlate:0b}
execute if score @s ase_trigger matches 31 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run data merge entity @s {NoBasePlate:1b}
execute if score @s ase_trigger matches 32 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[0] 1
execute if score @s ase_trigger matches 32 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 32 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 33 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[0] 1
execute if score @s ase_trigger matches 33 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 33 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 34 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[1] 1
execute if score @s ase_trigger matches 34 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 34 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 35 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[1] 1
execute if score @s ase_trigger matches 35 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 35 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 36 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[2] 1
execute if score @s ase_trigger matches 36 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 36 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 37 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Head[2] 1
execute if score @s ase_trigger matches 37 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 37 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 38 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[0] 1
execute if score @s ase_trigger matches 38 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 38 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 39 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[0] 1
execute if score @s ase_trigger matches 39 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 39 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 40 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[1] 1
execute if score @s ase_trigger matches 40 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 40 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 41 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[1] 1
execute if score @s ase_trigger matches 41 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 41 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 42 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[2] 1
execute if score @s ase_trigger matches 42 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 42 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 43 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.Body[2] 1
execute if score @s ase_trigger matches 43 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 43 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 44 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[0] 1
execute if score @s ase_trigger matches 44 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 44 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 45 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[0] 1
execute if score @s ase_trigger matches 45 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 45 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 46 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[1] 1
execute if score @s ase_trigger matches 46 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 46 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 47 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[1] 1
execute if score @s ase_trigger matches 47 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 47 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 48 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[2] 1
execute if score @s ase_trigger matches 48 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 48 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 49 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftArm[2] 1
execute if score @s ase_trigger matches 49 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 49 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 50 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[0] 1
execute if score @s ase_trigger matches 50 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 50 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 51 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[0] 1
execute if score @s ase_trigger matches 51 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 51 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 52 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[1] 1
execute if score @s ase_trigger matches 52 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 52 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 53 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[1] 1
execute if score @s ase_trigger matches 53 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 53 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 54 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[2] 1
execute if score @s ase_trigger matches 54 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 54 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 55 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightArm[2] 1
execute if score @s ase_trigger matches 55 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 55 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 56 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[0] 1
execute if score @s ase_trigger matches 56 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 56 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 57 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[0] 1
execute if score @s ase_trigger matches 57 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 57 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 58 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[1] 1
execute if score @s ase_trigger matches 58 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 58 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 59 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[1] 1
execute if score @s ase_trigger matches 59 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 59 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 60 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[2] 1
execute if score @s ase_trigger matches 60 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 60 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 61 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.LeftLeg[2] 1
execute if score @s ase_trigger matches 61 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 61 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 62 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[0] 1
execute if score @s ase_trigger matches 62 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 62 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 63 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[0] 1
execute if score @s ase_trigger matches 63 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 63 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 64 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[1] 1
execute if score @s ase_trigger matches 64 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 64 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 65 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[1] 1
execute if score @s ase_trigger matches 65 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 65 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 66 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[2] 1
execute if score @s ase_trigger matches 66 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp -= @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 66 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 67 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result score @s ase_tmp run data get entity @s Pose.RightLeg[2] 1
execute if score @s ase_trigger matches 67 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run scoreboard players operation @s ase_tmp += @p[tag=ase_selected_player] ase_step
execute if score @s ase_trigger matches 67 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] run execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ase_tmp
execute if score @s ase_trigger matches 70 run scoreboard players remove @s ase_step 15
execute if score @s ase_trigger matches 70 run function ase:do_step_checks
execute if score @s ase_trigger matches 71 run scoreboard players remove @s ase_step 5
execute if score @s ase_trigger matches 71 run function ase:do_step_checks
execute if score @s ase_trigger matches 72 run scoreboard players remove @s ase_step 1
execute if score @s ase_trigger matches 72 run function ase:do_step_checks
execute if score @s ase_trigger matches 73 run scoreboard players add @s ase_step 1
execute if score @s ase_trigger matches 73 run function ase:do_step_checks
execute if score @s ase_trigger matches 74 run scoreboard players add @s ase_step 5
execute if score @s ase_trigger matches 74 run function ase:do_step_checks
execute if score @s ase_trigger matches 75 run scoreboard players add @s ase_step 15
execute if score @s ase_trigger matches 75 run function ase:do_step_checks
execute if score @s ase_trigger matches 76 run scoreboard players set @s ase_step 1
execute if score @s ase_trigger matches 76 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 77 run scoreboard players set @s ase_step 5
execute if score @s ase_trigger matches 77 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 78 run scoreboard players set @s ase_step 15
execute if score @s ase_trigger matches 78 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 79 run scoreboard players set @s ase_step 45
execute if score @s ase_trigger matches 79 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 80 run scoreboard players set @s ase_step 90
execute if score @s ase_trigger matches 80 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 81 run scoreboard players set @s ase_step 180
execute if score @s ase_trigger matches 81 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 82 run scoreboard players set @s ase_step 270
execute if score @s ase_trigger matches 82 run title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]
execute if score @s ase_trigger matches 83 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.5 ~ ~
execute if score @s ase_trigger matches 84 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.25 ~ ~
execute if score @s ase_trigger matches 85 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~-0.0625 ~ ~
execute if score @s ase_trigger matches 86 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.0625 ~ ~
execute if score @s ase_trigger matches 87 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.25 ~ ~
execute if score @s ase_trigger matches 88 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~0.5 ~ ~
execute if score @s ase_trigger matches 89 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.5 ~
execute if score @s ase_trigger matches 90 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.25 ~
execute if score @s ase_trigger matches 91 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~-0.0625 ~
execute if score @s ase_trigger matches 92 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.0625 ~
execute if score @s ase_trigger matches 93 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.25 ~
execute if score @s ase_trigger matches 94 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~0.5 ~
execute if score @s ase_trigger matches 95 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.5
execute if score @s ase_trigger matches 96 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.25
execute if score @s ase_trigger matches 97 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~-0.0625
execute if score @s ase_trigger matches 98 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.0625
execute if score @s ase_trigger matches 99 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.25
execute if score @s ase_trigger matches 100 run execute as @e[type=minecraft:armor_stand,tag=ase_selected_stand] at @s run tp @s ~ ~ ~0.5
tag @s remove ase_selected_player
tag @e[tag=ase_selected_stand] remove ase_selected_stand
scoreboard players set @s ase_trigger 0