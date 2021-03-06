import 'package:objd/core.dart';

import 'book_pages/action_repeat.dart';
import 'book_pages/pose.dart';
import 'book_pages/position.dart';
import 'book_pages/settings.dart';
import 'book_pages/slots.dart';
import 'book_pages/start.dart';
import 'book_pages/target_tools.dart';
import 'book_pages/utilities.dart';
import 'get_selected.dart';

Score trigger_score = Score.fromSelected("trigger", addNew: false);

TextClickEvent trigger(int value) {
  return TextClickEvent.run_command(Command("trigger ase_trigger set $value"));
}

If onTriggered(int value, List<Widget> then, {bool encapsulate = false, String targetFileName = null, String targetFilePath = "objd"}) {
  return If(trigger_score.matches(value), encapsulate: encapsulate, targetFileName: targetFileName, targetFilePath: targetFilePath, then: then);
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
          repeat_action_page,
          repeat_action_save_page,
          
        ], 
        author: "Minimine4", 
        count: 1, 
        title: "Armor Stand Editor", 
        name: TextComponent("Armor Stand Editor", color: Color.LightPurple, italic: false),
        nbt: {
          "datapack": "ase",
          "ase": {
            "clipboard": {},
            "recorded_actions": {
              "latest": [],
              "saves": (int amount) {
                List l = [];
                for(int i = 0; i < amount; i++) l.add([]);
                return l;
              }(56)
            },
          }
        }
      ))
    ]);
  }
}

// Implement Functionality
File action = File.execute("action", child: For.of([

  Comment("Called from main as every player that triggers the armor stand trigger"),

  Tag("ase_selected_player", entity: Entity.Selected(), value: true),

  If(Score.fromSelected("trigger", addNew: false).matchesRange(Range.from(10)), then: [
    File.execute("get_selected", child: new GetSelected()),
  ]),

  onTriggered(1, [
    Tellraw(Entity.Selected(), show: [
      TextComponent("Given ", color: Color.Gray),
      TextComponent("\"Armor Stand Editor\"", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([
        TextComponent("A Book that ist made for editing Armor Stands\nDatapack by Minimine")
      ])),
      TextComponent(" to you!", color: Color.Gray)
    ]),
    File.execute("get_book", create: false)
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
  ], orElse: [
    If(
        Condition.and([
          Condition.not(Score.fromSelected("trigger", addNew: false).matchesRange(Range(147, 152))),
          Score.fromSelected("trigger", addNew: false).matchesRange(Range.from(20))
        ]),
        then: [
      Title.actionbar(Entity.Selected(), show: [
        TextComponent("No stand found", color: Color.Red)
      ])
    ])
  ]),
  RepeatActionFunctionality(),

  // Pose

  Tag("ase_selected_player", entity: Entity.Selected(), value: false),
  Tag("ase_selected_stand", entity: Entity(tags: ["ase_selected_stand"]), value: false),

  Score.fromSelected("trigger", addNew: false).set(0)
  
]));