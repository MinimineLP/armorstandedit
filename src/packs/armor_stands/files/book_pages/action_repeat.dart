import 'package:objd/core.dart';

import '../../paths.dart';
import '../book.dart';
import '../book_manipulation.dart';

BookPage repeat_action_page = BookPage([
  TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Action Repeat", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Repeat actions to save some time.", color: Color.Gray, italic: true),
  ])),

  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),

  TextComponent("rec", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("start recording", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(147)),

  TextComponent("      ", color: Color.White),

  TextComponent("pause", color: Color.Blue, hoverEvent: TextHoverEvent.text([
    TextComponent("pause / continue recording", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(148)),

  TextComponent("     ", color: Color.White),
  TextComponent("stop", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("stop recording", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(149)),

  TextComponent("\n"),

  TextComponent("repeat", color: Color.Blue, hoverEvent: TextHoverEvent.text([
    TextComponent("repeat recorded actions", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(150)),

  TextComponent("|  ", color: Color.White),
  TextComponent("clear", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("clear recording", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(151)),

  TextComponent("l    ", color: Color.White),
  TextComponent("save", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("save recording", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(152)),
  
  
]);

class RepeatActionFunctionality extends Widget {

  @override
  generate(Context context) {

    Tag ase_recording = Tag("ase_recording", entity: Entity.Selected());
    Tag ase_recording_paused = Tag("ase_recording_paused", entity: Entity.Selected());

    Condition active_recording = Condition.entity(Entity.Selected(tags:  ["ase_recording", "!ase_recording_paused"]));

    Storage tmp = Storage("ase:tmp", autoNamespace: false);

    return For.of([

      // Start Recording
      onTriggered(147, [
        
        If(Condition.not(ase_recording), then: [

          // Start
          Entity.Selected().addTag("ase_recording"),
          If(ase_recording_paused, then: [ Entity.Selected().removeTag("ase_recording_paused"), ]),
          Tellraw(Entity.Selected(), show: [TextComponent("Recording started", color: Color.DarkGreen)]),
          startBookManipulation,

          Data.remove(bookManipulationEntity, path: PathsHandItems0.recorded_actions.toString()),

          stopBookManipulation,

        ], orElse: [

          If(ase_recording_paused, then: [

            // Continue
            Entity.Selected().removeTag("ase_recording_paused"),
            Tellraw(Entity.Selected(), show: [TextComponent("Recording continued", color: Color.DarkGreen)])

          ], orElse: [

            // [Error] Cant Start / Continue
            Tellraw(Entity.Selected(), show: [TextComponent("You have an active recording running, can't start anotherone", color: Color.Red)])

          ], encapsulate: false, targetFileName: null, targetFilePath: null)
        ], encapsulate: false, targetFileName: null, targetFilePath: null)

      ]),

      // Pause Recording
      onTriggered(148, [

        If(ase_recording, then: [
          
          If(ase_recording_paused, then: [

            // Continue
            Entity.Selected().removeTag("ase_recording_paused"), 
            Tellraw(Entity.Selected(), show: [TextComponent("recording continued", color: Color.Blue)])

          ], orElse: [

            // Pause
            Entity.Selected().addTag("ase_recording_paused"), 
            Tellraw(Entity.Selected(), show: [TextComponent("recording paused", color: Color.Blue)])

          ]),

        ], orElse: [
          Tellraw(Entity.Selected(), show: [TextComponent("Error: You have no running recording", color: Color.Red)])
        ], encapsulate: false)

      ]),

      // Stop Recording
      onTriggered(149, [
        
        
        If(ase_recording, encapsulate: false, then: [

          // Stop Recording
          If(ase_recording_paused, then: [ Entity.Selected().removeTag("ase_recording_paused"), ]),
          Entity.Selected().removeTag("ase_recording"),
          Tellraw(Entity.Selected(), show: [TextComponent("Recording stopped", color: Color.Yellow)])

        ], orElse: [

          // [Error] No recording running
          Tellraw(Entity.Selected(), show: [TextComponent("Error: You have no running recording", color: Color.Red)])

        ], targetFileName: null, targetFilePath: null),
      ]),

      // Stop Recording
      onTriggered(150, [
        
        
        If.not(ase_recording, encapsulate: false, then: [
          
          
          If(Condition.entity(Entity.Selected(nbt: {"SelectedItem":{"tag": {"datapack": "ase"}}})), then: [
            Data.modify(DataStorage("ase:repeat:tmp"), path: "contents", modify: DataModify.set(Entity.Selected(), fromPath: PathsMainhand.recorded_actions.toString())),
          ], orElse: [
            Data.modify(DataStorage("ase:repeat:tmp"), path: "contents", modify: DataModify.set(Entity.Selected(), fromPath: PathsOffhand.recorded_actions.toString())),
          ]),
          
          trigger_score.setToData(Data.get(DataStorage("ase:repeat:tmp"), path: "contents[0]")),

          Do.Until(trigger_score.matches(0), then: [
            
            Data.remove(DataStorage("ase:repeat:tmp"), path: "contents[0]"),
            File.execute("stand_action", create: false),
            trigger_score.setToData(Data.get(DataStorage("ase:repeat:tmp"), path: "contents[0]")),

          ], testBefore: false),

          Tellraw(Entity.Selected(), show: [TextComponent("Reexecuted recorded actions", color: Color.Blue)])

        ], orElse: [

          Tellraw(Entity.Selected(), show: [TextComponent("Error: You have a recording running. Can't replay while recording", color: Color.Red)])

        ], targetFileName: null, targetFilePath: null),
      ]),

      // Stop Recording
      onTriggered(151, [
        startBookManipulation,
        Data.remove(bookManipulationEntity, path: PathsHandItems0.recorded_actions.toString()),
        stopBookManipulation,
        Tellraw(Entity.Selected(), show: [TextComponent("Cleared recorded actions", color: Color.Yellow)])
      ]),

      // Stop Recording
      onTriggered(152, [
        Tellraw(Entity.Selected(), show: [TextComponent("Error: Not implemented for now", color: Color.Red)])
      ]),
      
      // Track actions
      If(Condition.and([
        active_recording,
        Condition.not(trigger_score.matchesRange(Range(147, 152)))
      ]), then: [
        startBookManipulation,

        tmp.copyScore("tmp", score: trigger_score, datatype: "int"),
        Data.modify(bookManipulationEntity, path: PathsHandItems0.recorded_actions.toString(), modify: DataModify.append(DataStorage("ase:tmp"), fromPath: "tmp")),

        stopBookManipulation,
      ], encapsulate: false),
    ]);
  }
  
}