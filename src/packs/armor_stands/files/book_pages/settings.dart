import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage settings_page = BookPage([
  TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Settings", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("General settings of the armor stand", color: Color.Gray, italic: true),
  ])),

  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),


  TextComponent("Gravity", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("manipulate gravity for the armor stand", color: Color.Gray, italic: true)
  ])),
  TextComponent("|           ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" gravity", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.run_command(Command("trigger ase_trigger set 20"))),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" gravity", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.run_command(Command("trigger ase_trigger set 21"))),
  TextComponent("\n"),


  TextComponent("Invisibility", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("make armor stand invisible", color: Color.Gray, italic: true)
  ])),
  TextComponent("|l       ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" invisibility", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(22)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" invisibility", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(23)),
  TextComponent("\n"),


  TextComponent("Show Name", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("show name", color: Color.Gray, italic: true)
  ])),
  TextComponent("|       ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" display of the name", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(24)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" display of the name", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(25)),
  TextComponent("\n"),


  TextComponent("Show Arms", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("show arms of the armor stand", color: Color.Gray, italic: true)
  ])),
  TextComponent("|       ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" arms of the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(26)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" arms of the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(27)),
  TextComponent("\n"),


  TextComponent("Small Stand", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("make the armor stand small", color: Color.Gray, italic: true)
  ])),
  TextComponent("|      ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" the small attribute for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(28)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" the small attribute for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(29)),
  TextComponent("\n"),


  TextComponent("Base Plate", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("does the armor stand has a base plate", color: Color.Gray, italic: true)
  ])),
  TextComponent("|l      ", color: Color.White),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.Green, italic: true),
    TextComponent(" the base plate for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(30)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" the base plate for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(31)),
]);

class SettingsFunctionality extends Widget {
  @override
  generate(Context context) {
    return For.of([
      If(Score.fromSelected("trigger", addNew: false).matches(20), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoGravity": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(21), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoGravity": true}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(22), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invisible": true}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(23), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invisible": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(24), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"CustomNameVisible": true}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(25), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"CustomNameVisible": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(26), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"ShowArms": true}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(27), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"ShowArms": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(28), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Small": true}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(29), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Small": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(30), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoBasePlate": false}))
      ]),

      If(Score.fromSelected("trigger", addNew: false).matches(31), then: [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoBasePlate": true}))
      ]),
    ]);
  }
  
}