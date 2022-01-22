import 'package:freezed_annotation/freezed_annotation.dart';

part 'bazaar_item.freezed.dart';
part 'bazaar_item.g.dart';

@freezed
class BazaarItem with _$BazaarItem {
  factory BazaarItem({
    required int bazaar,
    required String charname,
    @JsonKey(name: 'online_flag') required int onlineFlag,
  }) = _BazaarItem;

  factory BazaarItem.fromJson(Map<String, dynamic> json) =>
      _$BazaarItemFromJson(json);
}
