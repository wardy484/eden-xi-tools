import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/user_settings/user_settings_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_events.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:eden_xi_tools/widgets/favourite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerFavouriteButton extends StatelessWidget {
  final Player player;

  const PlayerFavouriteButton({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final settingsBloc = BlocProvider.of<UserSettingsBloc>(context);

    return BlocBuilder<UserSettingsBloc, UserSettingsState>(
      builder: (context, state) {
        bool value = false;

        if (state is UserSettingsFetched) {
          value =
              state.favourites.any((element) => element.name == player.name);
        }

        return FavouriteButton(
          value: value,
          onPressed: (bool favourited) {
            if (favourited) {
              settingsBloc.add(UserSettingsAddFavourite(player: player));
            } else {
              settingsBloc.add(UserSettingsRemoveFavourite(player: player));
            }
          },
        );
      },
    );
  }
}
