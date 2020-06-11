import 'dart:math';

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
  TextComponent("\n", color: Color.White),
  TextComponent("Load from main to", color: Color.DarkPurple),
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

  TextComponent("\n             ", color: Color.White),
  TextComponent("All", color: Color.DarkGray, hoverEvent: TextHoverEvent.text([ TextComponent("Both, Place and Remove from the armorstand", color: Color.Gray, italic: true) ] )),
  TextComponent("    ", color: Color.White),
  TextComponent("P.", color: Color.DarkGray, hoverEvent: TextHoverEvent.text([ TextComponent("Place item on armorstand", color: Color.Gray, italic: true) ] )),
  TextComponent("    ", color: Color.White),
  TextComponent("R.", color: Color.DarkGray, hoverEvent: TextHoverEvent.text([ TextComponent("Remove item from armorstand", color: Color.Gray, italic: true) ] )),
  TextComponent("\n", color: Color.White),

  TextComponent("Disable Slots", color: Color.DarkPurple),
  TextComponent("|l   ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ 
    TextComponent("enable", color: Color.DarkGreen, italic: true), 
    TextComponent(" all slots", color: Color.Gray)
  ]), clickEvent: trigger(107)),
  TextComponent(" ", color: Color.White),
  TextComponent("[X]", color: Color.Red, hoverEvent: TextHoverEvent.text([ 
    TextComponent("disable", color: Color.Red, italic: true), 
    TextComponent(" all slots", color: Color.Gray)
  ]), clickEvent: trigger(108)),

  TextComponent("Head", color: Color.DarkBlue),
  TextComponent("|      ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with head slot", color: Color.Gray)]), clickEvent: trigger(109)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with head slot", color: Color.Gray) ]), clickEvent: trigger(110)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the head slot", color: Color.Gray) ]), clickEvent: trigger(111)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the head slot", color: Color.Gray) ]), clickEvent: trigger(112)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the head slot", color: Color.Gray) ]), clickEvent: trigger(113)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the head slot", color: Color.Gray) ]), clickEvent: trigger(114)),
  TextComponent("\n", color: Color.White),

  TextComponent("Main.H.", color: Color.DarkBlue),
  TextComponent("     ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with mainhand slot", color: Color.Gray)]), clickEvent: trigger(115)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with mainhand slot", color: Color.Gray) ]), clickEvent: trigger(116)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the mainhand slot", color: Color.Gray) ]), clickEvent: trigger(117)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the mainhand slot", color: Color.Gray) ]), clickEvent: trigger(118)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the mainhand slot", color: Color.Gray) ]), clickEvent: trigger(119)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the mainhand slot", color: Color.Gray) ]), clickEvent: trigger(120)),
  TextComponent("\n", color: Color.White),

  TextComponent("Off.H.", color: Color.DarkBlue),
  TextComponent("      ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with offhand slot", color: Color.Gray)]), clickEvent: trigger(121)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with offhand slot", color: Color.Gray) ]), clickEvent: trigger(122)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the offhand slot", color: Color.Gray) ]), clickEvent: trigger(123)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the offhand slot", color: Color.Gray) ]), clickEvent: trigger(124)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the offhand slot", color: Color.Gray) ]), clickEvent: trigger(125)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the offhand slot", color: Color.Gray) ]), clickEvent: trigger(126)),
  TextComponent("\n", color: Color.White),

  TextComponent("Chest.", color: Color.DarkBlue),
  TextComponent("     ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with chestplate slot", color: Color.Gray)]), clickEvent: trigger(127)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with chestplate slot", color: Color.Gray) ]), clickEvent: trigger(128)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the chestplate slot", color: Color.Gray) ]), clickEvent: trigger(129)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the chestplate slot", color: Color.Gray) ]), clickEvent: trigger(130)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the chestplate slot", color: Color.Gray) ]), clickEvent: trigger(131)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the chestplate slot", color: Color.Gray) ]), clickEvent: trigger(132)),
  TextComponent("\n", color: Color.White),

  TextComponent("Leggings", color: Color.DarkBlue),
  TextComponent("| ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with leggings slot", color: Color.Gray)]), clickEvent: trigger(133)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with leggings slot", color: Color.Gray) ]), clickEvent: trigger(134)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the leggings slot", color: Color.Gray) ]), clickEvent: trigger(135)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the leggings slot", color: Color.Gray) ]), clickEvent: trigger(136)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the leggings slot", color: Color.Gray) ]), clickEvent: trigger(137)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the leggings slot", color: Color.Gray) ]), clickEvent: trigger(138)),
  TextComponent("\n", color: Color.White),

  TextComponent("Boots", color: Color.DarkBlue),
  TextComponent("|     ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" all interaction with boots slot", color: Color.Gray)]), clickEvent: trigger(139)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" all interaction with boots slot", color: Color.Gray) ]), clickEvent: trigger(140)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" placement on the boots slot", color: Color.Gray) ]), clickEvent: trigger(141)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" placement on the boots slot", color: Color.Gray) ]), clickEvent: trigger(142)),
  TextComponent("  ", color: Color.White),
  TextComponent("+", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([ TextComponent("enable", color: Color.DarkGreen, italic: true), TextComponent(" removement from the boots slot", color: Color.Gray) ]), clickEvent: trigger(143)),
  TextComponent(" ", color: Color.White),
  TextComponent("-", color: Color.Red, hoverEvent: TextHoverEvent.text([ TextComponent("disable", color: Color.Red, italic: true), TextComponent(" removement from the boots slot", color: Color.Gray) ]), clickEvent: trigger(144)),

]);

class SlotsFunctionality extends Widget {
  @override
  generate(Context context) {

    Score tmp = Score(Entity.Selected(), "tmp");
    List<String> standnames = [ 
      "ase_hand_all", "ase_boot_all", "ase_leg_all", "ase_chest_all", "ase_head_all", "ase_offhand_all",
      "ase_hand_place", "ase_boot_place", "ase_leg_place", "ase_chest_place", "ase_head_place", "ase_offhand_place",
      "ase_hand_remove", "ase_boot_remove", "ase_leg_remove", "ase_chest_remove", "ase_head_remove", "ase_offhand_remove",
    ];

    

    return For.of([
      onTriggered(101, [
        If(Condition.data(Data.get(selected_stand, path: "HandItems[0].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "HandItems[0]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      onTriggered(102, [
        If(Condition.data(Data.get(selected_stand, path: "HandItems[1].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "HandItems[1]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      onTriggered(103, [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[3].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[3]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      onTriggered(104, [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[2].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[2]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      onTriggered(105, [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[1].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[1]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),
      onTriggered(106, [
        If(Condition.data(Data.get(selected_stand, path: "ArmorItems[0].id")), then: [
          Title.actionbar(Entity.Selected(), show: [TextComponent("This stand already has something in his Mainhand", color: Color.Red)])
        ], orElse: [
          Data.modify(selected_stand, path: "ArmorItems[0]", modify: DataModify.merge(Entity.Selected(), fromPath: "SelectedItem")),
          ReplaceItem(Entity.Selected(), item: Item(Items.air), slot: Slot.MainHand),
        ])
      ]),

      // Disable slots
      onTriggered(107, [ Data.merge(selected_stand, nbt: {"DisabledSlots": 0}) ]),
      onTriggered(108, [ Data.merge(selected_stand, nbt: {"DisabledSlots": 4144959}) ]),

      

      

      Execute().If(Condition.score(Score.fromSelected("trigger", addNew: false).matchesRange(Range(109, 144)))).asat(selected_stand).run(

        File.execute( "decode_disabled_slots", child: For.of([
          
          tmp.setToResult(Command("data get entity @s DisabledSlots")),
          For(from: 1, to: 18, step: 1, create: (i) {
            i=18-i;
            int n = pow(2, i + 1)-1;
            return For.of([
              If(tmp.matchesRange(Range.from(n)), then: [
                Entity.Selected().addTag(standnames[i]),
                tmp.subtract(n)
              ]),
            ]);
          })

        ] )),

      ),

      
      onTriggered(109, [ selected_stand.addTag("ase_head_all") ]),
      onTriggered(110, [ selected_stand.removeTag("ase_head_all") ]),
      onTriggered(111, [ selected_stand.addTag("ase_head_place") ]),
      onTriggered(112, [ selected_stand.removeTag("ase_head_place") ]),
      onTriggered(113, [ selected_stand.addTag("ase_head_remove") ]),
      onTriggered(114, [ selected_stand.removeTag("ase_head_remove") ]),

      onTriggered(115, [ selected_stand.addTag("ase_hand_all") ]),
      onTriggered(116, [ selected_stand.removeTag("ase_hand_all") ]),
      onTriggered(117, [ selected_stand.addTag("ase_hand_place") ]),
      onTriggered(118, [ selected_stand.removeTag("ase_hand_place") ]),
      onTriggered(119, [ selected_stand.addTag("ase_hand_remove") ]),
      onTriggered(120, [ selected_stand.removeTag("ase_hand_remove") ]),

      onTriggered(121, [ selected_stand.addTag("ase_offhand_all") ]),
      onTriggered(122, [ selected_stand.removeTag("ase_offhand_all") ]),
      onTriggered(123, [ selected_stand.addTag("ase_offhand_place") ]),
      onTriggered(124, [ selected_stand.removeTag("ase_offhand_place") ]),
      onTriggered(125, [ selected_stand.addTag("ase_offhand_remove") ]),
      onTriggered(126, [ selected_stand.removeTag("ase_offhand_remove") ]),

      onTriggered(127, [ selected_stand.addTag("ase_chest_all") ]),
      onTriggered(128, [ selected_stand.removeTag("ase_chest_all") ]),
      onTriggered(129, [ selected_stand.addTag("ase_chest_place") ]),
      onTriggered(130, [ selected_stand.removeTag("ase_chest_place") ]),
      onTriggered(131, [ selected_stand.addTag("ase_chest_remove") ]),
      onTriggered(132, [ selected_stand.removeTag("ase_chest_remove") ]),

      onTriggered(133, [ selected_stand.addTag("ase_chest_all") ]),
      onTriggered(134, [ selected_stand.removeTag("ase_chest_all") ]),
      onTriggered(135, [ selected_stand.addTag("ase_chest_place") ]),
      onTriggered(136, [ selected_stand.removeTag("ase_chest_place") ]),
      onTriggered(137, [ selected_stand.addTag("ase_chest_remove") ]),
      onTriggered(138, [ selected_stand.removeTag("ase_chest_remove") ]),

      onTriggered(133, [ selected_stand.addTag("ase_leg_all") ]),
      onTriggered(134, [ selected_stand.removeTag("ase_leg_all") ]),
      onTriggered(135, [ selected_stand.addTag("ase_leg_place") ]),
      onTriggered(136, [ selected_stand.removeTag("ase_leg_place") ]),
      onTriggered(137, [ selected_stand.addTag("ase_leg_remove") ]),
      onTriggered(138, [ selected_stand.removeTag("ase_leg_remove") ]),

      onTriggered(133, [ selected_stand.addTag("ase_boot_all") ]),
      onTriggered(134, [ selected_stand.removeTag("ase_boot_all") ]),
      onTriggered(135, [ selected_stand.addTag("ase_boot_place") ]),
      onTriggered(136, [ selected_stand.removeTag("ase_boot_place") ]),
      onTriggered(137, [ selected_stand.addTag("ase_boot_remove") ]),
      onTriggered(138, [ selected_stand.removeTag("ase_boot_remove") ]),

      Execute().If(Condition.score(Score.fromSelected("trigger", addNew: false).matchesRange(Range(109, 144)))).asat(selected_stand).run(

        File.execute( "encode_disabled_slots", child: For.of([

          For(from: 1, to: 18, step: 1, create: (i) {
            i=18-i;
            int n = pow(2, i + 1)-1;
            return For.of([
              If(Condition.tag(Tag(standnames[i], entity: Entity.Selected())),then: [
                tmp.add(n),
                Entity.Selected().removeTag(standnames[i]),
              ])
            ]);
          }),
          Data.fromScore(Entity.Selected(), score: tmp, path: "DisabledSlots")
        ])),

      )
    ]);
  }
  
}