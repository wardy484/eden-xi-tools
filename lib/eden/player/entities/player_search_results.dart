import 'package:equatable/equatable.dart';

class PlayerSearchResultItem extends Equatable {
  final String avatar;
  final String charname;
  final String jobString;
  final String title;

  const PlayerSearchResultItem({
    this.avatar,
    this.charname,
    this.jobString,
    this.title,
  });

  @override
  List<Object> get props => [
        avatar,
        charname,
        jobString,
        title,
      ];

  @override
  String toString() => 'Search Result Item { id: $charname }';
}

class PlayerSearchResult extends Equatable {
  final int total;
  final List<PlayerSearchResultItem> items;

  const PlayerSearchResult({this.total, this.items});

  @override
  List<Object> get props => [total, items];

  @override
  String toString() => 'Player Search Result { total: $total }';
}
