import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result/search_result.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item/auction_house_item.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/entities/item/item.dart';

class ItemRepository {
  final Dio client;

  ItemRepository({required this.client});

  Future<SearchResult> search(
      String itemName, int startIndex, int limit) async {
    final encodedItemName = Uri.encodeFull(itemName);
    final response = await client
        .get('/items?search=$encodedItemName&limit=$limit&offset=$startIndex');

    if (response.statusCode == 200) {
      return SearchResult.fromJson(response.data);
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
      return response.data.map<AuctionHouseItem>((item) {
        return AuctionHouseItem.fromJson(item);
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
      return response.data.map<BazaarItem>((item) {
        return BazaarItem.fromJson(item);
      }).toList();
    } else {
      throw Exception("Erroring fetching bazaar items from Eden server.");
    }
  }

  Future<Item> getItem(String key) async {
    final response = await client.get('/items/$key');

    if (response.statusCode == 200) {
      return Item.fromJson(response.data);
    } else {
      throw Exception("Erroring fetching item from Eden server.");
    }
  }

  Future<List<Owner>> getOwners(int key) async {
    final response = await client.get('/items/$key/owners');

    if (response.statusCode == 200) {
      List owners = response.data as List;

      return owners.map((owner) => Owner(owner)).toList();
    } else {
      throw Exception("Erroring fetching item from Eden server.");
    }
  }
}
