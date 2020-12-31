import 'package:flutter/foundation.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/entities/item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BaseEdenRepository {
  final http.Client client;
  final baseUrl = "https://edenxi.com/api/v1/";

  BaseEdenRepository({@required this.client});

  String getUrl(String url) {
    return '$baseUrl$url';
  }
}

class ItemRepository extends BaseEdenRepository {
  ItemRepository(http.Client client) : super(client: client);

  Future<List<AuctionHouseItem>> getAuctionHouseItem(
    String itemKey,
    bool stacked,
  ) async {
    final response =
        await client.get(getUrl('items/$itemKey/ah?stack=$stacked'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((item) {
        return AuctionHouseItem(
          buyerName: item['buyer_name'],
          name: item['name'],
          sellerName: item['seller_name'],
          sale: item['sale'],
          sellDate: item['sell_date'],
        );
      }).toList();
    } else {
      throw Exception(
        "Erroring fetching auction house items from Eden server.",
      );
    }
  }

  Future<List<BazaarItem>> getBazaarItems(String itemKey) async {
    final response = await client.get(getUrl('items/$itemKey/bazaar'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((item) {
        return BazaarItem(
          bazaar: item['bazaar'],
          charname: item['charname'],
          onlineFlag: item['online_flag'],
        );
      }).toList();
    } else {
      throw Exception("Erroring fetching bazaar items from Eden server.");
    }
  }

  Future<Item> getItem(String key) async {
    final response = await client.get('https://edenxi.com/api/v1/items/$key');

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map;

      return Item(
        id: data['id'],
        armor: data['armor'],
        desc: data['desc'],
        key: data['key'],
        name: data['name'],
        sort: data['sort'],
        stackable: data['stackable'],
      );
    } else {
      throw Exception("Erroring fetching item from Eden server.");
    }
  }
}
