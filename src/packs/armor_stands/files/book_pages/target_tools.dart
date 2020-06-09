import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage target_tools_page = BookPage([
  TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
  TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Target tools", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
  TextComponent("Tools for the targeting armor stands", color: Color.Gray, italic: true),
  ])),

  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),

  TextComponent("Highlight Target", color: Color.DarkPurple, clickEvent: trigger(10)),
  TextComponent("\n\n"),

  TextComponent("Target Lock", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Selects a target and keeps it selected\nuntil the lock is removed again", color: Color.Gray, italic: true),
  ])),
  
  TextComponent("     "),
  TextComponent("[+]", color: Color.Green, hoverEvent: TextHoverEvent.text([
    TextComponent("Enables", color: Color.Green, italic: true),
    TextComponent(" target lock", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(11)),

  TextComponent(" ", color: Color.Green),
  TextComponent("[-]", color: Color.Red, hoverEvent: TextHoverEvent.text([
    TextComponent("Disables", color: Color.Red, italic: true),
    TextComponent(" target lock", color: Color.Gray, italic: true),
  ]), clickEvent: trigger(12)),
]);

class TargetToolsFunctionality extends Widget {

  @override
  Widget generate(Context context) {
    return For.of([
      onTriggered(10, [
        Effect(EffectType.glowing, entity: Entity(tags: ["ase_selected_stand"]), amplifier: 0, duration: 3, showParticles: false)
      ]),

      onTriggered(11, [
        Effect(EffectType.glowing, entity: selected_stand, amplifier: 0, duration: 3, showParticles: false),
        Score.fromSelected("id").setEqual(Score(selected_stand, "id"))
      ]),

      onTriggered(12, [
        Score.fromSelected("id").set(0)
      ]),
    ]);
  }
  
}