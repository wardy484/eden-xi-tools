import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int id;
  final String armor;
  final String desc;
  final String key;
  final String name;
  final String sort;
  final bool stackable;

  const Item({
    this.id,
    this.armor,
    this.desc,
    this.key,
    this.sort,
    this.stackable,
    this.name,
  });

  @override
  List<Object> get props => [id, armor, desc, key, sort, stackable, name];

  @override
  String toString() => 'Item { id: $id }';

  SearchResultItem toSearchResultItem() {
    return SearchResultItem(
      id: id,
      name: name,
      sort: sort,
      key: key,
    );
  }
}
