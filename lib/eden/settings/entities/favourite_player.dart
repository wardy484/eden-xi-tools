import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class FavouritePlayer extends Equatable {
  final String avatarId;
  final String name;
  final String title;

  const FavouritePlayer({
    @required this.avatarId,
    @required this.name,
    @required this.title,
  });

  @override
  List<Object> get props => [
        avatarId,
        name,
        title,
      ];
}
