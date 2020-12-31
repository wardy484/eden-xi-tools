import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/eden/settings/data_access/favourite_player_data_access.dart';
import 'package:flutter/foundation.dart';

class FavouritePlayerRepository {
  final FavouritePlayerDA favouritePlayerDA;
  final PlayerRepository playerRepository;

  const FavouritePlayerRepository({
    @required this.favouritePlayerDA,
    @required this.playerRepository,
  });

  Future<List<Player>> getFavouritePlayers() async {
    List<String> playerNames = await favouritePlayerDA.getFavourites();

    return await Stream.fromIterable(playerNames).asyncMap((name) async {
      return await playerRepository.getPlayer(name);
    }).toList();
  }

  Future<Player> addFavouritePlayer(Player player) async {
    List<String> playerNames = await favouritePlayerDA.getFavourites();

    playerNames.add(player.name);
    await favouritePlayerDA.saveFavourites(playerNames);

    return await playerRepository.getPlayer(player.name);
  }

  Future<void> removeFavouritePlayer(Player player) async {
    List<String> playerNames = await favouritePlayerDA.getFavourites();

    playerNames = playerNames.where((name) => name != player.name).toList();

    await favouritePlayerDA.saveFavourites(playerNames);
  }
}
