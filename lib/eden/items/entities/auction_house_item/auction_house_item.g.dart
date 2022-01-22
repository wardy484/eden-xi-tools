// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_house_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuctionHouseItem _$$_AuctionHouseItemFromJson(Map<String, dynamic> json) =>
    _$_AuctionHouseItem(
      buyerName: json['buyer_name'] as String,
      name: json['name'] as String,
      sale: json['sale'] as int,
      sellDate: json['sell_date'] as int,
      sellerName: json['seller_name'] as String,
    );

Map<String, dynamic> _$$_AuctionHouseItemToJson(_$_AuctionHouseItem instance) =>
    <String, dynamic>{
      'buyer_name': instance.buyerName,
      'name': instance.name,
      'sale': instance.sale,
      'sell_date': instance.sellDate,
      'seller_name': instance.sellerName,
    };
