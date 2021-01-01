import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_search_results.g.dart';

@JsonSerializable()
class PlayerSearchResultItem extends Equatable {
  final String avatar;
  final String charname;
  final String jobString;
  final String title;

  const PlayerSearchResultItem({
    @required this.avatar,
    @required this.charname,
    @required this.jobString,
    @required this.title,
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

  factory PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerSearchResultItemFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerSearchResultItemToJson(this);
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
