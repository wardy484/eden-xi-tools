// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_auction_house_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerAuctionHouseItem _$_$_PlayerAuctionHouseItemFromJson(
    Map<String, dynamic> json) {
  return _$_PlayerAuctionHouseItem(
    buyerName: json['buyer_name'] as String,
    name: json['name'] as String,
    sale: json['sale'] as int,
    sellDate: json['sell_date'] as int,
    sellerName: json['seller_name'] as String,
    stackSize: json['stack_size'] as int,
  );
}

Map<String, dynamic> _$_$_PlayerAuctionHouseItemToJson(
        _$_PlayerAuctionHouseItem instance) =>
    <String, dynamic>{
      'buyer_name': instance.buyerName,
      'name': instance.name,
      'sale': instance.sale,
      'sell_date': instance.sellDate,
      'seller_name': instance.sellerName,
      'stack_size': instance.stackSize,
    };
