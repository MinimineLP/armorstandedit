# Called from #minecraft:tick, main file
scoreboard players enable @a ase_trigger
scoreboard players enable @a ase_step
execute as @e[type=minecraft:armor_stand] at @s unless score @s ase_id matches 1.. run function ase:get_id
execute as @a[scores={ase_trigger=1..}] at @s run function ase:ase_action