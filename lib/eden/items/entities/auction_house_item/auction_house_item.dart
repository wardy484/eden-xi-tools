import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_house_item.freezed.dart';
part 'auction_house_item.g.dart';

@freezed
class AuctionHouseItem with _$AuctionHouseItem {
  factory AuctionHouseItem({
    @JsonKey(name: 'buyer_name') required String buyerName,
    required String name,
    required int sale,
    @JsonKey(name: 'sell_date') required int sellDate,
    @JsonKey(name: 'seller_name') required String sellerName,
  }) = _AuctionHouseItem;

  factory AuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$AuctionHouseItemFromJson(json);
}
