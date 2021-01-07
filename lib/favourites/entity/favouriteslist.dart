import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'favouriteslist.freezed.dart';
part 'favouriteslist.g.dart';

@freezed
abstract class Favouriteable with _$Favouriteable {
  factory Favouriteable() = _Favouritable;

  factory Favouriteable.fromJson(Map<String, dynamic> json) =>
      _$FavouriteableFromJson(json);
}
