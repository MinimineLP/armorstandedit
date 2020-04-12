execute if score @s ase_step matches 360.. run scoreboard players set @s ase_step 359
execute if score @s ase_step matches ..0 run scoreboard players set @s ase_step 1
title @s actionbar [{"text":"The step is now "},{"score":{"name":"@s","objective":"ase_step"}}]