import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/user_settings/user_settings_events.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettingsState> {
  final PlayerRepository playerRepository;
  final limit = 30;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  UserSettingsBloc({@required this.playerRepository})
      : super(UserSettingsEmpty());

  @override
  Stream<UserSettingsState> mapEventToState(UserSettingsEvent event) async* {
    if (event is UserSettingsInitial) {
      yield UserSettingsEmpty();
    }

    if (event is UserSettingsAddFavourite) {
      final SharedPreferences prefs = await _prefs;
      List<String> userNames = prefs.getStringList('favourites') ?? [];
      userNames.add(event.player.name);

      prefs.setStringList('favourites', userNames);

      print(userNames);

      List<Player> players =
          await Stream.fromIterable(userNames).asyncMap((name) async {
        return await playerRepository.getPlayer(name);
      }).toList();

      yield UserSettingsFetched(favourites: players);
    }

    if (event is UserSettingsRemoveFavourite) {
      final SharedPreferences prefs = await _prefs;
      List<String> userNames = prefs.getStringList('favourites') ?? [];

      userNames = userNames.where((name) => name != event.player.name).toList();

      prefs.setStringList('favourites', userNames);

      print(userNames);

      List<Player> players =
          await Stream.fromIterable(userNames).asyncMap((name) async {
        return await playerRepository.getPlayer(name);
      }).toList();

      yield UserSettingsFetched(favourites: players);
    }

    if (event is UserSettingsFetch) {
      final SharedPreferences prefs = await _prefs;
      List<String> userNames = prefs.getStringList('favourites') ?? [];

      List<Player> players =
          await Stream.fromIterable(userNames).asyncMap((name) async {
        return await playerRepository.getPlayer(name);
      }).toList();

      print(userNames);

      yield UserSettingsFetched(favourites: players);
    }
  }
}
