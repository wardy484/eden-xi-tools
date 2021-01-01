import 'package:equatable/equatable.dart';

class PlayerCrafts extends Equatable {
  final double alchemy;
  final double bonecraft;
  final double clothcraft;
  final double cooking;
  final double fishing;
  final double goldsmithing;
  final double leathercraft;
  final double smithing;
  final double synergy;
  final double woodworking;

  const PlayerCrafts({
    this.alchemy,
    this.bonecraft,
    this.clothcraft,
    this.cooking,
    this.fishing,
    this.goldsmithing,
    this.leathercraft,
    this.smithing,
    this.synergy,
    this.woodworking,
  });

  @override
  List<Object> get props => [
        alchemy,
        bonecraft,
        clothcraft,
        cooking,
        fishing,
        goldsmithing,
        leathercraft,
        smithing,
        synergy,
        woodworking,
      ];

  @override
  String toString() => 'Player crafting ';
}
