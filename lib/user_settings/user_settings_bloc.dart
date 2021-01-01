import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/eden/settings/repository/favourite_player_repository.dart';
import 'package:eden_xi_tools/user_settings/user_settings_events.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettingsState> {
  final PlayerRepository playerRepository;
  final FavouritePlayerRepository favouritePlayerRepository;

  final limit = 30;

  UserSettingsBloc({
    @required this.playerRepository,
    @required this.favouritePlayerRepository,
  }) : super(UserSettingsEmpty());

  @override
  Stream<UserSettingsState> mapEventToState(UserSettingsEvent event) async* {
    if (event is UserSettingsInitial) {
      yield UserSettingsEmpty();
    }

    if (event is UserSettingsAddFavourite) {
      List<Player> players = [];

      if (state is UserSettingsFetched) {
        UserSettingsFetched newState = state as UserSettingsFetched;
        players = newState.favourites.toList();
      }

      Player newPlayer =
          await favouritePlayerRepository.addFavouritePlayer(event.player);

      players.add(newPlayer);

      yield UserSettingsFetched(favourites: players);
    }

    if (event is UserSettingsRemoveFavourite) {
      await favouritePlayerRepository.removeFavouritePlayer(event.player);

      if (state is UserSettingsFetched) {
        UserSettingsFetched newState = state as UserSettingsFetched;
        List<Player> favourites = newState.favourites
            .where((player) => player.name != event.player.name)
            .toList();

        yield UserSettingsFetched(favourites: favourites);
      } else {
        yield UserSettingsFetched(favourites: []);
      }
    }

    if (event is UserSettingsFetch) {
      final players = await favouritePlayerRepository.getFavouritePlayers();

      yield UserSettingsFetched(favourites: players);
    }
  }
}
