import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int id;
  final String armour;
  final String desc;
  final String key;
  final String sort;
  final bool stackable;

  const Item(
      {this.id, this.armour, this.desc, this.key, this.sort, this.stackable});

  @override
  List<Object> get props => [id, armour, desc, key, sort, stackable];

  @override
  String toString() => 'Item { id: $id }';
}
