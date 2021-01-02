import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/entities/item.dart';
import 'package:flutter/material.dart';

class ItemRepository {
  final Dio client;

  ItemRepository({@required this.client});

  Future<SearchResult> search(
      String itemName, int startIndex, int limit) async {
    final encodedItemName = Uri.encodeFull(itemName);
    final response = await client
        .get('/items?search=$encodedItemName&limit=$limit&offset=$startIndex');

    if (response.statusCode == 200) {
      final data = response.data;
      final items = data['items'] as List;

      return SearchResult(
        total: data['total'],
        items: items.map<SearchResultItem>((item) {
          return SearchResultItem(
            id: item['id'],
            name: item['name'],
            sort: item['sort'],
            key: item['key'],
          );
        }).toList(),
      );
    } else {
      throw Exception("Erroring fetching search results from Eden server.");
    }
  }

  Future<List<AuctionHouseItem>> getAuctionHouseItem(
    String itemKey,
    bool stacked,
  ) async {
    final response = await client.get('/items/$itemKey/ah?stack=$stacked');

    if (response.statusCode == 200) {
      final data = response.data;

      return data.map<AuctionHouseItem>((item) {
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
    final response = await client.get('/items/$itemKey/bazaar');

    if (response.statusCode == 200) {
      final data = response.data;

      return data.map<BazaarItem>((item) {
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
    final response = await client.get('/items/$key');

    if (response.statusCode == 200) {
      final data = response.data;

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
