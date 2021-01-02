import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:flutter/cupertino.dart';

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
    final response = await client.get(_buildSearchUrl(
      playerName,
      startIndex,
      limit,
      false,
    ));

    if (response.statusCode == 200) {
      final data = response.data;
      final players = data['chars'] as List;

      return PlayerSearchResult(
        total: data['total'],
        items: players.map<PlayerSearchResultItem>((player) {
          return PlayerSearchResultItem(
            avatar: player['avatar'],
            charname: player['charname'],
            jobString: player['jobString'],
            title: player['title'],
          );
        }).toList(),
      );
    } else {
      throw Exception(
          "Erroring fetching player search results from Eden server.");
    }
  }

  Future<Player> getPlayer(String playerName) async {
    final response = await client.get('/chars/$playerName');

    if (response.statusCode == 200) {
      final data = response.data;
      final jobs = data['jobs'];
      final ranks = data['ranks'];

      return Player(
        avatar: data['avatar'],
        id: data['id'],
        jobString: data['jobString'],
        mentor: data['mentor'],
        name: data['name'],
        nameFlags: data['nameFlags'],
        nation: data['nation'],
        online: data['online'],
        title: data['title'],
        jobs: PlayerJobs(
          blm: jobs['BLM'],
          blu: jobs['BLU'],
          brd: jobs['BRD'],
          bst: jobs['BST'],
          cor: jobs['COR'],
          dnc: jobs['DNC'],
          drg: jobs['DRG'],
          drk: jobs['DRK'],
          mnk: jobs['MNK'],
          nin: jobs['NIN'],
          pld: jobs['PLD'],
          pup: jobs['PUP'],
          rdm: jobs['RDM'],
          rng: jobs['RNG'],
          sam: jobs['SAM'],
          sch: jobs['SCH'],
          smn: jobs['SMN'],
          thf: jobs['THF'],
          war: jobs['WAR'],
          whm: jobs['WHM'],
        ),
        ranks: PlayerRanks(
          bastok: ranks['bastok'],
          sandoria: ranks['sandoria'],
          windurst: ranks['windurst'],
        ),
      );
    } else {
      throw Exception(
        "Erroring fetching player data for player from Eden server.",
      );
    }
  }

  Future<PlayerCrafts> getCrafts(String playerName) async {
    final response = await client.get('/chars/$playerName/crafts');

    if (response.statusCode == 200) {
      final data = response.data;

      return PlayerCrafts(
        alchemy: toDouble(data['Alchemy']),
        bonecraft: toDouble(data['Bonecraft']),
        clothcraft: toDouble(data['Clothcraft']),
        cooking: toDouble(data['Cooking']),
        fishing: toDouble(data['Fishing']),
        goldsmithing: toDouble(data['Goldsmithing']),
        leathercraft: toDouble(data['Leathercraft']),
        smithing: toDouble(data['Smithing']),
        synergy: toDouble(data['Synergy']),
        woodworking: toDouble(data['Woodworking']),
      );
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
        return PlayerAuctionHouseItem(
          buyerName: item['buyer_name'],
          name: item['name'],
          sellerName: item['seller_name'],
          sale: item['sale'],
          sellDate: item['sell_date'],
          stackSize: item['stack_size'],
        );
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
      final data = response.data;

      return data.map<PlayerBazaarItem>((item) {
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
