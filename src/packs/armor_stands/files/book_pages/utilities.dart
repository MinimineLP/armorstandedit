import 'package:objd/core.dart';

import '../../paths.dart';
import '../book.dart';
import '../book_manipulation.dart';
import '../get_selected.dart';

BookPage utilities = BookPage([
  TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Utilities", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Useful utilities for armor-stand editing", color: Color.Gray, italic: true),
  ])),
  TextComponent("\n"),
  TextComponent("Copy", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([ TextComponent("Copy the armorstand data to the book", color: Color.Gray, italic: true) ] ), clickEvent: trigger(145)),
  TextComponent("|               ", color: Color.White),
  TextComponent("Paste", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([ TextComponent("Paste the armorstand data from the book to selected stand", color: Color.Gray, italic: true) ] ), clickEvent: trigger(146)),
]);

class UtilitiesFunctionality extends Widget {

  @override
  Widget generate(Context context) {
    return For.of([
      onTriggered(145, [
        
        startBookManipulation,
        
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("NoGravity").toString(), modify: DataModify.set(selected_stand, fromPath: "NoGravity")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("Invisible").toString(), modify: DataModify.set(selected_stand, fromPath: "Invisible")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("CustomNameVisible").toString(), modify: DataModify.set(selected_stand, fromPath: "CustomNameVisible")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("ShowArms").toString(), modify: DataModify.set(selected_stand, fromPath: "ShowArms")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("Small").toString(), modify: DataModify.set(selected_stand, fromPath: "Small")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("NoBasePlate").toString(), modify: DataModify.set(selected_stand, fromPath: "NoBasePlate")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("Pose").toString(), modify: DataModify.set(selected_stand, fromPath: "Pose")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("Rotation").toString(), modify: DataModify.set(selected_stand, fromPath: "Rotation")),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.clipboard.child("DisabledSlots").toString(), modify: DataModify.set(selected_stand, fromPath: "DisabledSlots")),
        
        stopBookManipulation,
        
      ], encapsulate: true, targetFileName: "copy", targetFilePath: "utilities"),

      onTriggered(146, [
        If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
          Group(children: [
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("NoGravity").toString()), path: "NoGravity"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("Invisible").toString()), path: "Invisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("CustomNameVisible").toString()), path: "CustomNameVisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("ShowArms").toString()), path: "ShowArms"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("Small").toString()), path: "Small"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("Pose").toString()), path: "Pose"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("Rotation").toString()), path: "Rotation"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.clipboard.child("DisabledSlots").toString()), path: "DisabledSlots")
          ], filename: "paste", path: "utilities")
        ], orElse: [
          Group(children: [
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("NoGravity").toString()), path: "NoGravity"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("Invisible").toString()), path: "Invisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("CustomNameVisible").toString()), path: "CustomNameVisible"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("ShowArms").toString()), path: "ShowArms"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("Small").toString()), path: "Small"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("Pose").toString()), path: "Pose"),
            Data.modify(selected_stand, modify: DataModify.merge(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("Rotation").toString()), path: "Rotation"),
            Data.modify(selected_stand, modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.clipboard.child("DisabledSlots").toString()), path: "DisabledSlots")
          ], filename: "paste", path: "utilities")
        ]),
      ], encapsulate: true, targetFileName: "paste", targetFilePath: "trigger/"),

    ]);
  }
  
}