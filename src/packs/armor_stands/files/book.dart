import 'package:objd/core.dart';

import 'book_pages/pose.dart';
import 'book_pages/position.dart';
import 'book_pages/settings.dart';
import 'book_pages/start.dart';
import 'book_pages/target_tools.dart';

TextClickEvent trigger(int value) {
  return TextClickEvent.run_command(Command("trigger ase_trigger set $value"));
}

class BookFile extends Widget {
  BookFile();

  @override
  Widget generate(Context context) {
    return For.of([
      Give(Entity.Selected(), item: Item.Book([
        
        start_page,
        target_tools_page,
        settings_page,
        pose_page,
        position_page,
        
      ], author: "Minimine4", count: 1, title: "Armor Stand Editor", name: TextComponent("Armor Stand Editor", color: Color.LightPurple, italic: false)))
    ]);
  }
}
