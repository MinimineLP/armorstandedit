import 'package:objd/core.dart';
import 'packs/armor_stands/pack.dart';

void main(List<String> args) {
  
  Scoreboard.prefix = "ase_";
  
  createProject(
    Project(
      name: 'ArmorStandEdit',
      target: "./",
      description: "§7§oArmorStandEdit is an armor stand editor for minecraft to"
          " give players that don't have access to commands or dont like to use "
          "them access to the world of beautiful armor stand statues§r\n"
          "§3by Miniminine§r",
      generate: ArmorStandPack(),
    ),
    args
  );
}
