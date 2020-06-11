import 'package:objd/core.dart';

import '../paths.dart';

Entity bookManipulationEntity = Entity(type: Entities.bat, limit: 1, tags: ["ase_looting_bat"], name: "ase_looting_bat").sort(Sort.nearest);

File startBookManipulation = new File.execute("start_book_manipulation", create: false);

File stopBookManipulation = File.execute("stop_book_manipulation", create: false);



File startBookManipulationFile = new File("start_book_manipulation", create: true, child: For.of([
  
  Summon(Entities.bat, noAI: true, tags: ["ase_kill", "ase_looting_bat"], silent: true, name: TextComponent("ase_looting_bat"), nbt: {"DeathLootTable":"ase:copy_book", "HandItems":[{"id":"minecraft:written_book","Count": true,"tag":{}},{}]}),

  If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
    Data.modify(bookManipulationEntity, path: PathsHandItems0.base.toString(), modify: DataModify.merge(Entity.Selected(), fromPath: PathsMainhand.base.toString()))
  ], orElse: [
    Data.modify(bookManipulationEntity, path: PathsHandItems0.base.toString(), modify: DataModify.merge(Entity.Selected(), fromPath: PathsOffhand.base.toString()))
  ]),
  
]));

File stopBookManipulationFile = File("stop_book_manipulation", create: true, child: For.of([     
  If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
    Command("loot replace entity @s weapon.mainhand kill ${bookManipulationEntity.toString()}")
  ], orElse: [
    Command("loot replace entity @s weapon.offhand kill ${bookManipulationEntity.toString()}")
  ]),

  Tp(bookManipulationEntity, to: Location("~ -10 ~")),
  Kill(bookManipulationEntity)
]));