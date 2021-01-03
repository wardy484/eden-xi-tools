import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_auction_house_item.freezed.dart';
part 'player_auction_house_item.g.dart';

@freezed
abstract class PlayerAuctionHouseItem with _$PlayerAuctionHouseItem {
  factory PlayerAuctionHouseItem({
    @JsonKey(name: 'buyer_name') String buyerName,
    String name,
    int sale,
    @JsonKey(name: 'sell_date') int sellDate,
    @JsonKey(name: 'seller_name') String sellerName,
    @JsonKey(name: 'stack_size') int stackSize,
  }) = _PlayerAuctionHouseItem;

  factory PlayerAuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerAuctionHouseItemFromJson(json);
}
