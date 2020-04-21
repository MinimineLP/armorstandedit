import 'package:objd/core.dart';

BookPage start_page = BookPage([

  TextComponent(""),

  TextComponent("Armor Stand Editor", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("ArmorStandEdit is an armor stand editor for minecraft to give players that don't have access to commands or dont like to use them access to the world of beautiful armor stand statues\n", color: Color.Gray, italic: true),
    TextComponent("by Miniminine", color: Color.DarkAqua, italic: false)
  ])),

  TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),
  TextComponent("\n"),


  TextComponent("Settings", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("General settings of the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.change_page(3)),

  TextComponent("|t           ", color: Color.White),

  TextComponent("Pose", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Pose settings of the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.change_page(4)),



  TextComponent("\n"),
    TextComponent("Position", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Move the armor stand", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.change_page(5)),

  TextComponent("|            ", color: Color.White),

  TextComponent("Slots", color: Color.DarkBlue, hoverEvent: TextHoverEvent.text([
    TextComponent("Place Items in ArmorStand slots that are normally non-accessable and disable slot-iteraction", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.change_page(6)),

  TextComponent("\n\n\n\n\n\n\n\n\n\n|      ", color: Color.White),
  TextComponent("target tools", color: Color.DarkPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("Target settings for the armorstand", color: Color.Gray, italic: true)
  ]), clickEvent: TextClickEvent.change_page(2)),
]);