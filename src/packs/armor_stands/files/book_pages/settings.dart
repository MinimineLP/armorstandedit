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
    TextComponent("General settings", color: Color.Gray, italic: true),
  ])),

  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),


  TextComponent("Gravity", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Manipulate gravity", color: Color.Gray, italic: true)
  ])),
  TextComponent("|           ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
    TextComponent(" gravity", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.run_command(Command("trigger ase_trigger set 20"))),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" gravity", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.run_command(Command("trigger ase_trigger set 21"))),
  TextComponent("\n"),


  TextComponent("Visibility", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("make the stand invisible", color: Color.Gray, italic: true)
  ])),
  TextComponent("l          ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
    TextComponent(" visibility", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(22)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" visibility", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(23)),
  TextComponent("\n"),


  TextComponent("Show Name", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("show name", color: Color.Gray, italic: true)
  ])),
  TextComponent("|       ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
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
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
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
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
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
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
    TextComponent(" the base plate for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(30)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" the base plate for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(31)),
  TextComponent("\n"),


  TextComponent("Vulnerable", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Can the armor-stand get damaged in any way", color: Color.Gray, italic: true)
  ])),
  TextComponent("       ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
    TextComponent(" vulnerability for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(264)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" vulnerability for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(265)),
  TextComponent("\n"),


  TextComponent("Marker", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Is the armor stand a Marker-Stand?", color: Color.Gray, italic: true)
  ])),
  TextComponent("l           ", color: Color.White),
  TextComponent("[+]", color: Color.DarkGreen, hoverEvent: TextHoverEvent.text([
    TextComponent("enable", color: Color.DarkGreen, italic: true),
    TextComponent(" marker mode for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(266)),
  TextComponent(" "),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("disable", color: Color.Red, italic: true),
    TextComponent(" marker mode for the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: trigger(267)),
]);

class SettingsFunctionality extends Widget {
  @override
  generate(Context context) {
    return For.of([
      onTriggered(20, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoGravity": false}))
      ]),

      onTriggered(21, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoGravity": true}))
      ]),

      onTriggered(22, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invisible": false}))
      ]),

      onTriggered(23, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invisible": true}))
      ]),

      onTriggered(24, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"CustomNameVisible": true}))
      ]),

      onTriggered(25, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"CustomNameVisible": false}))
      ]),

      onTriggered(26, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"ShowArms": true}))
      ]),

      onTriggered(27, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"ShowArms": false}))
      ]),

      onTriggered(28, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Small": true}))
      ]),

      onTriggered(29, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Small": false}))
      ]),

      onTriggered(30, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoBasePlate": false}))
      ]),

      onTriggered(31, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"NoBasePlate": true}))
      ]),

      onTriggered(264, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invulnerable": false}))
      ]),

      onTriggered(265, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Invulnerable": true}))
      ]),

      onTriggered(266, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Marker": true}))
      ]),

      onTriggered(267, [
        (selected_stand.as() as Execute).run(Data.merge(Entity.Selected(), nbt: {"Marker": false}))
      ]),
    ]);
  }
  
}