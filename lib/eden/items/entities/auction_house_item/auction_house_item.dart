import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_house_item.freezed.dart';
part 'auction_house_item.g.dart';

@freezed
abstract class AuctionHouseItem with _$AuctionHouseItem {
  factory AuctionHouseItem({
    @JsonKey(name: 'buyer_name') String buyerName,
    String name,
    int sale,
    @JsonKey(name: 'sell_date') int sellDate,
    @JsonKey(name: 'seller_name') String sellerName,
  }) = _AuctionHouseItem;

  factory AuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$AuctionHouseItemFromJson(json);
}
