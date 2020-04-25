import 'package:objd/core.dart';

import '../variables.dart';
import 'book.dart';

class MainFile extends Widget {
  MainFile();

  @override
  Widget generate(Context context) {

    return For.of([
      Comment("Called from #minecraft:tick, main file"),
      Command("scoreboard players enable @a ase_trigger"),
      Command("scoreboard players enable @a ase_step"),
      
      Execute.asat(Entity(type: Entities.armor_stand), children: [
        Group(children: [
          Score.fromSelected("id").setEqual(master),
          master.add(1),
          If.not(Condition.data(Data.get(Entity.Selected(), path: "Pose.LeftArm")), then: [ Data.merge(Entity.Selected(), strNbt: "{Pose:{LeftArm:[0f,0f,0f]}}") ]),
          If.not(Condition.data(Data.get(Entity.Selected(), path: "Pose.RightArm")), then: [ Data.merge(Entity.Selected(), strNbt: "{Pose:{RightArm:[0f,0f,0f]}}") ]),
          If.not(Condition.data(Data.get(Entity.Selected(), path: "Pose.LeftLeg")), then: [ Data.merge(Entity.Selected(), strNbt: "{Pose:{LeftLeg:[0f,0f,0f]}}") ]),
          If.not(Condition.data(Data.get(Entity.Selected(), path: "Pose.RightLeg")), then: [ Data.merge(Entity.Selected(), strNbt: "{Pose:{RightLeg:[0f,0f,0f]}}") ]),
        ],groupMin: 1, path: "", filename: "get_id", generateIDs: false)
      ]).unless(Condition.score(Score.fromSelected("id").matchesRange(Range(from: 1)))),

      Execute.asat(Entity.Player(), children: [
        Score.fromSelected("step").set(15)
      ]).unless(Condition.score(Score.fromSelected("step").matchesRange(Range(from: 1)))),

      Execute.asat(Entity.All(scores: [Score.fromSelected("trigger", addNew: false).matchesRange(Range(from: 1))]), children: [
        action
      ])
    ]);
  }
}
