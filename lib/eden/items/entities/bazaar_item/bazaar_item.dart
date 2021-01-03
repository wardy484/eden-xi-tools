import 'package:freezed_annotation/freezed_annotation.dart';

part 'bazaar_item.freezed.dart';
part 'bazaar_item.g.dart';

@freezed
abstract class BazaarItem with _$BazaarItem {
  factory BazaarItem({
    int bazaar,
    String charname,
    @JsonKey(name: 'online_flag') int onlineFlag,
  }) = _BazaarItem;

  factory BazaarItem.fromJson(Map<String, dynamic> json) =>
      _$BazaarItemFromJson(json);
}
