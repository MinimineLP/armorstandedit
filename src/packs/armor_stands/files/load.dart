import 'package:objd/core.dart';

import '../variables.dart';

class LoadFile extends Widget {
  /// The load file is put in a seperate widget to split the code in several files
  LoadFile();

  @override
  Widget generate(Context context) {
    return For.of([
      Scoreboard.add("trigger", type: "trigger"),
      Scoreboard.add("step", type: "dummy"),
      If.not(Condition.score(master.matchesRange(Range(from: 1))), then: [
        master.set(1)
      ])
    ]);
  }
}
