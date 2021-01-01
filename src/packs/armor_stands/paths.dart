class Path {

  final String name;

  Path(this.name);

  Path child(dynamic child) {
    if(child is num) return new Path("${this.name}[$child]");
    if(child is String) return new Path(this.name + "." + child);
    else return new Path(this.name + "." + child.toString());
  }
  
  @override
  String toString() {
    return this.name;
  }

  @deprecated
  operator +(dynamic child) => this.child(child);
}

class Paths {

  static Path base = Path("ase");

  static Path clipboard = Paths.base.child("clipboard");
  static Path recorded_actions = Paths.base.child("recorded_actions");

}

class PathsOffhand {

  static final Path base = Path("Inventory[{Slot:-106b}].tag");

  static final Path clipboard = PathsOffhand.base.child(Paths.clipboard);
  static final Path recorded_actions = PathsOffhand.base.child(Paths.recorded_actions);
  
}

class PathsMainhand {

  static final Path base = Path("SelectedItem.tag");

  static final Path clipboard = PathsMainhand.base.child(Paths.clipboard);
  static final Path recorded_actions = PathsMainhand.base.child(Paths.recorded_actions);
  
}

class PathsHandItems0 {

  static final Path base = Path("HandItems[0].tag");

  static final Path clipboard = PathsHandItems0.base.child(Paths.clipboard);
  static final Path recorded_actions = PathsHandItems0.base.child(Paths.recorded_actions);
  
}