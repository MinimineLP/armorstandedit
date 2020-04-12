import 'package:objd/core.dart';

import '../book.dart';
import '../get_selected.dart';

BookPage position_page = BookPage([TextComponent(" "),
  TextComponent("«", color: Color.LightPurple, hoverEvent: TextHoverEvent.text([
    TextComponent("back to main page", color: Color.Gray, italic: true),
  ]), clickEvent: TextClickEvent.change_page(1)),
  TextComponent(" "),
  TextComponent("Position", color: Color.DarkRed, hoverEvent: TextHoverEvent.text([
    TextComponent("Move your Armor Stand", color: Color.Gray, italic: true),
  ])),
   TextComponent("\n"),
  TextComponent("---------|||---------", color: Color.DarkAqua),
  TextComponent("\n"),
  
  TextComponent("X:", color: Color.DarkBlue),
  TextComponent("|t  ", color: Color.White),
  TextComponent("-8", color: Color.Red, clickEvent: trigger(83)),
  TextComponent(" ", color: Color.White),
  TextComponent("-4", color: Color.Red, clickEvent: trigger(84)),
  TextComponent(" ", color: Color.White),
  TextComponent("-1", color: Color.Red, clickEvent: trigger(85)),
  TextComponent(" ", color: Color.White),
  TextComponent("+1", color: Color.Green, clickEvent: trigger(86)),
  TextComponent(" ", color: Color.White),
  TextComponent("+4", color: Color.Green, clickEvent: trigger(87)),
  TextComponent(" ", color: Color.White),
  TextComponent("+8", color: Color.Green, clickEvent: trigger(88)),
  TextComponent("\n", color: Color.White),
  
  TextComponent("Y:", color: Color.DarkBlue),
  TextComponent("|t  ", color: Color.White),
  TextComponent("-8", color: Color.Red, clickEvent: trigger(89)),
  TextComponent(" ", color: Color.White),
  TextComponent("-4", color: Color.Red, clickEvent: trigger(90)),
  TextComponent(" ", color: Color.White),
  TextComponent("-1", color: Color.Red, clickEvent: trigger(91)),
  TextComponent(" ", color: Color.White),
  TextComponent("+1", color: Color.Green, clickEvent: trigger(92)),
  TextComponent(" ", color: Color.White),
  TextComponent("+4", color: Color.Green, clickEvent: trigger(93)),
  TextComponent(" ", color: Color.White),
  TextComponent("+8", color: Color.Green, clickEvent: trigger(94)),
  TextComponent("\n", color: Color.White),
  
  TextComponent("Z:", color: Color.DarkBlue),
  TextComponent("|t  ", color: Color.White),
  TextComponent("-8", color: Color.Red, clickEvent: trigger(95)),
  TextComponent(" ", color: Color.White),
  TextComponent("-4", color: Color.Red, clickEvent: trigger(96)),
  TextComponent(" ", color: Color.White),
  TextComponent("-1", color: Color.Red, clickEvent: trigger(97)),
  TextComponent(" ", color: Color.White),
  TextComponent("+1", color: Color.Green, clickEvent: trigger(98)),
  TextComponent(" ", color: Color.White),
  TextComponent("+4", color: Color.Green, clickEvent: trigger(99)),
  TextComponent(" ", color: Color.White),
  TextComponent("+8", color: Color.Green, clickEvent: trigger(100)),
  TextComponent("\n", color: Color.White),
  
  TextComponent("t                  ", color: Color.White),
  TextComponent("(Pixels)", color: Color.DarkGray, hoverEvent: TextHoverEvent.text([TextComponent("1/16 Block, one Pixel on minecraft's default textures, 0.0625 in coordinates", color: Color.Gray, italic: true)])),


]);

class PositionFunctionality extends Widget {
  @override
  generate(Context context) {
    return For.of([
      If(Score.fromSelected("trigger", addNew: false).matches(83), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: -0.5)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(84), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: -0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(85), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: -0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(86), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: 0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(87), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: 0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(88), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(x: 0.5)) ), ]),
      
      If(Score.fromSelected("trigger", addNew: false).matches(89), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: -0.5)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(90), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: -0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(91), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: -0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(92), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: 0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(93), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: 0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(94), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(y: 0.5)) ), ]),
      
      If(Score.fromSelected("trigger", addNew: false).matches(95), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: -0.5)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(96), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: -0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(97), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: -0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(98), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: 0.0625)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(99), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: 0.25)) ), ]),
      If(Score.fromSelected("trigger", addNew: false).matches(100), then: [ (selected_stand.asat() as Execute).run( Tp(Entity.Self(), to: Location.rel(z: 0.5)) ), ]),
    ]);
  }
  
}