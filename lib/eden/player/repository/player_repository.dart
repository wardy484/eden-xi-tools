import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/player/entities/player/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_bazaar_item/player_bazaar_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/eden/player/entities/player_equipment/player_equipment.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result/player_search_results.dart';

import 'package:flutter/material.dart';

class PlayerRepository {
  final Dio client;

  PlayerRepository({@required this.client});

  String _buildSearchUrl(
    String playerName,
    int startIndex,
    int limit,
    bool online,
  ) {
    final encodedPlayerName = Uri.encodeFull(playerName);
    return 'chars?search=$encodedPlayerName&limit=$limit&offset=$startIndex&online=$online';
  }

  Future<PlayerSearchResult> search(
    String playerName,
    int startIndex,
    int limit,
  ) async {
    final url = _buildSearchUrl(playerName, startIndex, limit, false);
    final response = await client.get(url);

    if (response.statusCode == 200) {
      return PlayerSearchResult.fromJson(response.data);
    } else {
      throw Exception(
          "Erroring fetching player search results from Eden server.");
    }
  }

  Future<PlayerEquipment> getEquipment(String playerName) async {
    final response = await client.get('/chars/$playerName/equip');

    if (response.statusCode == 200) {
      return PlayerEquipment.fromJson(response.data);
    } else {
      throw Exception("Erroring fetching player equipment from Eden server.");
    }
  }

  Future<Player> getPlayer(String playerName) async {
    final response = await client.get('/chars/$playerName');

    if (response.statusCode == 200) {
      return Player.fromJson(response.data);
    } else {
      throw Exception(
        "Erroring fetching player data for player from Eden server.",
      );
    }
  }

  Future<PlayerCrafts> getCrafts(String playerName) async {
    final response = await client.get('/chars/$playerName/crafts');

    if (response.statusCode == 200) {
      return PlayerCrafts.fromJson(response.data);
    } else {
      throw Exception(
        "Erroring fetching player crafting data for player from Eden server.",
      );
    }
  }

  double toDouble(dynamic value) {
    if (value is int) {
      return value.toDouble();
    }

    return value;
  }

  Future<List<PlayerAuctionHouseItem>> getAuctionHouseItems(
    String playerName,
  ) async {
    final response = await client.get('/chars/$playerName/ah');

    if (response.statusCode == 200) {
      final data = response.data;

      return data.map<PlayerAuctionHouseItem>((item) {
        return PlayerAuctionHouseItem.fromJson(item);
      }).toList();
    } else {
      throw Exception(
        "Erroring fetching auction house data for player from Eden server.",
      );
    }
  }

  Future<List<PlayerBazaarItem>> getBazaarItems(String playerName) async {
    final response = await client.get('chars/$playerName/bazaar');

    if (response.statusCode == 200) {
      return response.data.map<PlayerBazaarItem>((item) {
        return PlayerBazaarItem(
          bazaar: item['bazaar'],
          itemName: item['name'],
        );
      }).toList();
    } else {
      throw Exception(
        "Erroring fetching bazaar data for player from Eden server.",
      );
    }
  }
}
