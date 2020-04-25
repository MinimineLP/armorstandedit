import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage utilities = BookPage([
  TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Utilities", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Usefull utilities for armor-stand editing", color: Color.Gray, italic: true),
  ])),
  TextComponent("\n"),
  TextComponent("Copy", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([ TextComponent("Copy the armorstand data to the book", color: Color.Gray, italic: true) ] ), clickEvent: trigger(145)),
  TextComponent("|               ", color: Color.White),
  TextComponent("Paste", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([ TextComponent("Paste the armorstand data from the book to selected stand", color: Color.Gray, italic: true) ] ), clickEvent: trigger(146)),
]);

class UtilitiesFunctionality extends Widget {

  @override
  Widget generate(Context context) {
    Entity bat = Entity(type: Entities.bat, limit: 1, tags: ["ase_looting_bat"], name: "ase_looting_bat").sort(Sort.nearest);
    return For.of([
      onTriggered(145, [
        
        Summon(Entities.bat, noAI: true, tags: ["ase_kill", "ase_looting_bat"], silent: true, name: TextComponent("ase_looting_bat"), nbt: {"DeathLootTable":"ase:copy_book", "HandItems":[{"id":"minecraft:written_book","Count": true,"tag":{}},{}]}),

        If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
          Data.modify(bat, path: "HandItems[0].tag", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem.tag"))
        ], orElse: [
          Data.modify(bat, path: "HandItems[0].tag", modify: DataModify.merge(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag"))
        ]),
        
        Data.modify(bat, path: "HandItems[0].tag.clipboard.NoGravity", modify: DataModify.set(selected_stand, fromPath: "NoGravity")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.Invisible", modify: DataModify.set(selected_stand, fromPath: "Invisible")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.CustomNameVisible", modify: DataModify.set(selected_stand, fromPath: "CustomNameVisible")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.ShowArms", modify: DataModify.set(selected_stand, fromPath: "ShowArms")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.Small", modify: DataModify.set(selected_stand, fromPath: "Small")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.NoBasePlate", modify: DataModify.set(selected_stand, fromPath: "NoBasePlate")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.Pose", modify: DataModify.set(selected_stand, fromPath: "Pose")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.Rotation", modify: DataModify.set(selected_stand, fromPath: "Rotation")),
        Data.modify(bat, path: "HandItems[0].tag.clipboard.DisabledSlots", modify: DataModify.set(selected_stand, fromPath: "DisabledSlots")),
        
        If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
          Command("loot replace entity @s weapon.mainhand kill ${bat.toString()}")
        ], orElse: [
          Command("loot replace entity @s weapon.offhand kill ${bat.toString()}")
        ]),

        Tp(bat, to: Location("~ -10 ~")),
        Kill(bat)
        
      ], encapsulate: true, targetFileName: "copy", targetFilePath: "utilities"),

      onTriggered(146, [
        If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
          Group(children: [
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.NoGravity"), path: "NoGravity"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.Invisible"), path: "Invisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.CustomNameVisible"), path: "CustomNameVisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.ShowArms"), path: "ShowArms"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.Small"), path: "Small"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.Pose"), path: "Pose"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.Rotation"), path: "Rotation"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "SelectedItem.tag.clipboard.DisabledSlots"), path: "DisabledSlots"),
          ], filename: "paste", path: "utilities")
        ], orElse: [
          Group(children: [
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.NoGravity"), path: "NoGravity"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.Invisible"), path: "Invisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.CustomNameVisible"), path: "CustomNameVisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.ShowArms"), path: "ShowArms"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.Small"), path: "Small"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.Pose"), path: "Pose"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.Rotation"), path: "Rotation"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: "Inventory[{Slot:-106b}].tag.clipboard.DisabledSlots"), path: "DisabledSlots")
          ], filename: "paste", path: "utilities")
        ]),
      ], encapsulate: true, targetFileName: "paste", targetFilePath: "trigger/"),

    ]);
  }
  
}