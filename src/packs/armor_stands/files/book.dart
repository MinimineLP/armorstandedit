import 'package:objd/core.dart';

import 'book_pages/pose.dart';
import 'book_pages/position.dart';
import 'book_pages/settings.dart';
import 'book_pages/slots.dart';
import 'book_pages/start.dart';
import 'book_pages/target_tools.dart';
import 'book_pages/utilities.dart';
import 'get_selected.dart';

TextClickEvent trigger(int value) {
  return TextClickEvent.run_command(Command("trigger ase_trigger set $value"));
}

If onTriggered(int value, List<Widget> then, {bool encapsulate = false, String targetFileName = null, String targetFilePath = "objd"}) {
  return If(Score.fromSelected("trigger", addNew: false).matches(value), encapsulate: encapsulate, targetFileName: targetFileName, targetFilePath: targetFilePath, then: then);
}

class BookFile extends Widget {
  BookFile();

  @override
  Widget generate(Context context) {
    return For.of([
      Give(Entity.Selected(), item: Item.Book(
        [
        
          start_page,
          target_tools_page,
          settings_page,
          pose_page,
          position_page,
          slots_page,
          utilities,
          
        ], 
        author: "Minimine4", 
        count: 1, 
        title: "Armor Stand Editor", 
        name: TextComponent("Armor Stand Editor", color: Color.LightPurple, italic: false),
        nbt: {
          "datapack": "ase",
          "clipboard": {}
        }
      ))
    ]);
  }
}

// Implement Functionality
File action = File.execute("action", child: For.of([

  Comment("Called from main as every player that triggers the armor stand trigger"),

  Tag("ase_selected_player", entity: Entity.Selected(), value: true),

  If(Score.fromSelected("trigger", addNew: false).matchesRange(Range(from: 10)), then: [
    File.execute("get_selected", child: new GetSelected()),
  ]),
  
  If(Condition.entity(selected_stand), then: [
    File.execute("stand_action", child: For.of([
      TargetToolsFunctionality(),
      SettingsFunctionality(),
      PoseFunctionality(),
      PositionFunctionality(),
      SlotsFunctionality(),
      UtilitiesFunctionality(),
    ])),
  ]),

  // Pose

  Tag("ase_selected_player", entity: Entity.Selected(), value: false),
  Tag("ase_selected_stand", entity: Entity(tags: ["ase_selected_stand"]), value: false),

  Score.fromSelected("trigger", addNew: false).set(0)
  
]));