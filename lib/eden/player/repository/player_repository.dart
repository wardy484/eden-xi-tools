import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PlayerRepository extends BaseEdenRepository {
  PlayerRepository(http.Client client) : super(client: client);

  String _buildSearchUrl(
      String playerName, int startIndex, int limit, bool online) {
    final encodedPlayerName = Uri.encodeFull(playerName);
    return getUrl(
      'chars?search=$encodedPlayerName&limit=$limit&offset=$startIndex&online=$online',
    );
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
      final data = json.decode(response.body) as Map;
      final players = data['chars'] as List;

      return PlayerSearchResult(
        total: data['total'],
        items: players.map((player) {
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
    final response = await client.get(getUrl('chars/$playerName'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map;
      final jobs = data['jobs'] as Map;
      final ranks = data['ranks'] as Map;

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
    final response = await client.get(getUrl('chars/$playerName/crafts'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map;

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
    final response = await client.get(getUrl('chars/$playerName/ah'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((item) {
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
    final response = await client.get(getUrl('chars/$playerName/bazaar'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((item) {
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
