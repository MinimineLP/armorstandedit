import 'package:objd/core.dart';

Entity selected_stand = Entity(type: Entities.armor_stand, tags: ["ase_selected_stand"], limit: 1);

class GetSelected extends Widget {
  GetSelected();

  @override
  Widget generate(Context context) {
    
    return For.of([
      
      If(Score.fromSelected("id").matchesRange(Range(from: 1)), encapsulate: false, then: [

        Execute.as(Entity(type: Entities.armor_stand), children: [
          
          Tag("ase_selected_stand", entity: Entity.Selected(), value: true),

        ]).If(Condition.score(Score.fromSelected("id").isEqual(Score(Entity.Player(tags: ["ase_selected_player"]), "id")))),

      ]),

      If.not(Condition.entity(Entity(type: Entities.armor_stand, tags: ["ase_selected_stand"])), then: [

        Execute.as(Entity(type: Entities.armor_stand, limit: 1, tags: [ "!ase_disabled" ], distance: Range(to: 5)).sort(Sort.nearest), children: [
          
          Tag("ase_selected_stand", entity: Entity.Selected(), value: true),

        ])

      ]),
      
      If.not(Condition.entity(Entity(type: Entities.armor_stand, tags: ["ase_selected_stand"])), then: [
        Title.actionbar(Entity.Selected(), show: [
          TextComponent("No stand found", color: Color.Red)
        ])
      ])
    ]);
  }
}
