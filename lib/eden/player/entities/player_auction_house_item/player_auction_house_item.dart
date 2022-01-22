import 'package:eden_xi_tools/eden/items/entities/auction_house_item/auction_house_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_auction_house_item.freezed.dart';
part 'player_auction_house_item.g.dart';

@freezed
class PlayerAuctionHouseItem with _$PlayerAuctionHouseItem {
  const PlayerAuctionHouseItem._();

  factory PlayerAuctionHouseItem({
    @JsonKey(name: 'buyer_name') required String buyerName,
    required String name,
    required int sale,
    @JsonKey(name: 'sell_date') required int sellDate,
    @JsonKey(name: 'seller_name') required String sellerName,
    @JsonKey(name: 'stack_size') required int stackSize,
  }) = _PlayerAuctionHouseItem;

  factory PlayerAuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerAuctionHouseItemFromJson(json);

  AuctionHouseItem toAuctionHouseItem() {
    return AuctionHouseItem(
      buyerName: buyerName,
      sellerName: sellerName,
      sale: sale,
      sellDate: sellDate,
      name: name,
    );
  }
}
