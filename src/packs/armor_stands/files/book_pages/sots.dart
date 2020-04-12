import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage slots_page = BookPage([TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Slots", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Place Items in ArmorStand slots that are normally non-accessable", color: Color.Gray, italic: true),
  ])),
  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),
  TextComponent("\n                ", color: Color.White),
  TextComponent("Main", color: Color.Black),
  TextComponent("   ", color: Color.White),
  TextComponent("Off", color: Color.Black),
  TextComponent("\n", color: Color.White),

  TextComponent("Mainhand", color: Color.DarkBlue, clickEvent: trigger(101)),
  TextComponent("|       ", color: Color.White),
  TextComponent("Offhand", color: Color.DarkBlue, clickEvent: trigger(102)),

  TextComponent("\n", color: Color.White),
  TextComponent("Head", color: Color.DarkBlue, clickEvent: trigger(103)),
  TextComponent("|               ", color: Color.White),
  TextComponent("Chest", color: Color.DarkBlue, clickEvent: trigger(104)),

  TextComponent("\n", color: Color.White),
  TextComponent("Leggings", color: Color.DarkBlue, clickEvent: trigger(105)),
  TextComponent("            ", color: Color.White),
  TextComponent("Feet", color: Color.DarkBlue, clickEvent: trigger(106)),

]);

class SlotsFunctionality extends Widget {
  @override
  generate(Context context) {
    return For.of([
      If(Score.fromSelected("trigger", addNew: false).matches(101), then: [
        If(Condition.data(Data.get(selected_stand, path: "HandItems[0].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "HandItems[0]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      If(Score.fromSelected("trigger", addNew: false).matches(102), then: [
        If(Condition.data(Data.get(selected_stand, path: "HandItems[1].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "HandItems[1]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      If(Score.fromSelected("trigger", addNew: false).matches(103), then: [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[3].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[3]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      If(Score.fromSelected("trigger", addNew: false).matches(104), then: [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[2].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[2]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      If(Score.fromSelected("trigger", addNew: false).matches(105), then: [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[1].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[1]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      If(Score.fromSelected("trigger", addNew: false).matches(106), then: [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[0].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[0]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
    ]);
  }
  
}