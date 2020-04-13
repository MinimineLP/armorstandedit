scoreboard players operation @s ase_id = #master ase_id
scoreboard players add #master ase_id 1
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,0f,0f]}}
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,0f,0f]}}
execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f]}}
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[0f,0f,0f]}}