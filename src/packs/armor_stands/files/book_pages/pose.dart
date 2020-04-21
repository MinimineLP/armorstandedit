import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage pose_page = BookPage([TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Pose Adjust", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Pose Adjustments", color: Color.Gray, italic: true),
  ])),
   TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),
  TextComponent("\n"),
  
  TextComponent("l             ", color: Color.White),
  TextComponent("X", color: Color.Black),
  TextComponent("|    ", color: Color.White),
  TextComponent("Y", color: Color.Black),
  TextComponent("|    ", color: Color.White),
  TextComponent("Z", color: Color.Black),
  TextComponent("\n"),
   TextComponent("Head", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("|      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(32)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(33)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(34)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(35)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(36)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(37)),
  TextComponent("\n"),

  TextComponent("Body", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("|      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(38)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(39)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(40)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(41)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(42)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(43)),
  TextComponent("\n"),

  TextComponent("L.Arm", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(44)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(45)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(46)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(47)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(48)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(49)),
  TextComponent("\n"),

  TextComponent("R.Arm", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(50)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(51)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(52)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(53)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(54)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(55)),
  TextComponent("\n"),

  TextComponent("L.Leg", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(56)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(57)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(58)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(59)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(60)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(61)),
  TextComponent("\n"),

  TextComponent("R.Leg", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(62)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(63)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(64)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(65)),
  TextComponent("  "),
  TextComponent("-", color: Color.Red, clickEvent: trigger(66)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(67)),
  TextComponent("\n"),

  TextComponent("Base", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate head position", color: Color.Gray, italic: true)
  ])),
  TextComponent("|      ", color: Color.White),
  TextComponent("-", color: Color.Red, clickEvent: trigger(68)),
  TextComponent(" "),
  TextComponent("+", color: Color.Green, clickEvent: trigger(69)),
  TextComponent("\n\n"),

  TextComponent("Step", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("The step size for", color: Color.Gray, italic: true)
  ])),          
  TextComponent("\n"),
   TextComponent("-15", color: Color.Red, clickEvent: trigger(70)),
  TextComponent(" "),
  TextComponent("-5", color: Color.Red, clickEvent: trigger(71)),
  TextComponent(" "),
  TextComponent("-1", color: Color.Red, clickEvent: trigger(72)),
  TextComponent("   "),
  TextComponent("+1", color: Color.Green, clickEvent: trigger(73)),
  TextComponent(" "),
  TextComponent("+5", color: Color.Green, clickEvent: trigger(74)),
  TextComponent(" "),
  TextComponent("+15", color: Color.Green, clickEvent: trigger(75)),

  TextComponent("1", color: Color.DarkPurple, clickEvent: trigger(76)),
  TextComponent(" "),
  TextComponent("5", color: Color.DarkPurple, clickEvent: trigger(77)),
  TextComponent(" "),
  TextComponent("15", color: Color.DarkPurple, clickEvent: trigger(78)),
  TextComponent(" "),
  TextComponent("45", color: Color.DarkPurple, clickEvent: trigger(79)),
  TextComponent("  "),
  TextComponent("90", color: Color.DarkPurple, clickEvent: trigger(80)),
  TextComponent(" "),
  TextComponent("180", color: Color.DarkPurple, clickEvent: trigger(81)),
  TextComponent(" "),
  TextComponent("270", color: Color.DarkPurple, clickEvent: trigger(80)),
  TextComponent("\n"),

]);

class PoseFunctionality extends Widget {
  @override
  generate(Context context) {
    
    Score tmp = Score(Entity.Selected(), "tmp");
    
    return For.of([

      onTriggered(32, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(33, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(34, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(35, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(36, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(37, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Head[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Head[2]", score: tmp, datatype: 'float')
        ])),
      ]),

          

      onTriggered(38, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(39, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(40, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(41, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(42, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(43, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.Body[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.Body[2]", score: tmp, datatype: 'float')
        ])),
      ]),

          

      onTriggered(44, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(45, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(46, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(47, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(48, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(49, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftArm[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftArm[2]", score: tmp, datatype: 'float')
        ])),
      ]),

          

      onTriggered(50, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(51, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(52, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(53, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(54, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(55, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightArm[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightArm[2]", score: tmp, datatype: 'float')
        ])),
      ]),

          

      onTriggered(56, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(57, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(58, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(59, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(60, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(61, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.LeftLeg[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.LeftLeg[2]", score: tmp, datatype: 'float')
        ])),
      ]),

          

      onTriggered(62, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(63, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(64, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[1]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(65, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[1]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[1]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(66, [
        (selected_stand.as() as Execute).run(For.of([
          tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[2]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(67, [
        (selected_stand.as() as Execute).run(For.of([
        tmp.setToResult(Data.get(Entity.Selected(), path: "Pose.RightLeg[2]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Pose.RightLeg[2]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(68, [
        (selected_stand.as() as Execute).run(For.of([
        tmp.setToResult(Data.get(Entity.Selected(), path: "Rotation[0]").generate(null)),
          tmp.subtractScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Rotation[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(69, [
        (selected_stand.as() as Execute).run(For.of([
        tmp.setToResult(Data.get(Entity.Selected(), path: "Rotation[0]").generate(null)),
          tmp.addScore(Score(Entity.Player(tags: ["ase_selected_player"]), "step")),
          Data.fromScore(Entity.Selected(), path: "Rotation[0]", score: tmp, datatype: 'float')
        ])),
      ]),

      onTriggered(70, [
        Score(Entity.Selected(), "step").subtract(15),
        File.execute("do_step_checks", child: For.of([
          If(Condition.score(Score(Entity.Selected(), "step").matchesRange(Range(from: 360))), then: <Widget>[
            Score(Entity.Selected(), "step").set(359)
          ]),
          If(Condition.score(Score(Entity.Selected(), "step").matchesRange(Range(to: 0))), then: <Widget>[
            Score(Entity.Selected(), "step").set(1),
          ]),
          Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
        ])),
      ]),
  
      onTriggered(71, [
        Score(Entity.Selected(), "step").subtract(5),
        File.execute("do_step_checks", create: false)
      ]),

      onTriggered(72, [
        Score(Entity.Selected(), "step").subtract(1),
        File.execute("do_step_checks", create: false)
      ]),

      onTriggered(73, [
        Score(Entity.Selected(), "step").add(1),
        File.execute("do_step_checks", create: false)
      ]),

      onTriggered(74, [
        Score(Entity.Selected(), "step").add(5),
        File.execute("do_step_checks", create: false)
      ]),

      onTriggered(75, [
        Score(Entity.Selected(), "step").add(15),
        File.execute("do_step_checks", create: false)
      ]),

      onTriggered(76, [
        Score(Entity.Selected(), "step").set(1),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(77, [
        Score(Entity.Selected(), "step").set(5),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(78, [
        Score(Entity.Selected(), "step").set(15),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(79, [
        Score(Entity.Selected(), "step").set(45),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(80, [
        Score(Entity.Selected(), "step").set(90),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(81, [
        Score(Entity.Selected(), "step").set(180),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),

      onTriggered(82, [
        Score(Entity.Selected(), "step").set(270),
        Title.actionbar(Entity.Selected(), show: [TextComponent("The step is now "), TextComponent.score(Score.fromSelected("step"))])
      ]),
    ]);
  }
  
}