scoreboard objectives add ase_trigger dummy
scoreboard objectives add ase_step dummy
scoreboard objectives add ase_tmp dummy
scoreboard objectives add ase_id dummy
scoreboard objectives add ase_trigger trigger
scoreboard objectives add ase_step dummy
execute unless score #master ase_id matches 1.. run scoreboard players set #master ase_id 1