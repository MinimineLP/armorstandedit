import 'package:objd/core.dart';

import 'files/book.dart';
import 'files/book_manipulation.dart';
import 'files/load.dart';
import 'files/main.dart';

class ArmorStandPack extends Widget {

  ArmorStandPack();


  @override
  Widget generate(Context context) {
    return Pack(
      name: 'ase',
      main: File(
        'main',
        child: MainFile()
      ),
      load: File(
        'load',
        child: LoadFile()
      ),
      modules: [

      ],
      files: [
        File( 'get_book', child: BookFile() ),
        startBookManipulationFile,
        stopBookManipulationFile,
      ]
    );
  }
}
