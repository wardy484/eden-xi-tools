import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_crafting_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_jobs_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_show_regions.dart';
import 'package:eden_xi_tools/user_settings/user_settings_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_events.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:eden_xi_tools/widgets/online_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerShowDetails extends StatelessWidget {
  final Player player;
  final PlayerCrafts crafts;

  const PlayerShowDetails({
    Key key,
    this.player,
    this.crafts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = BlocProvider.of<UserSettingsBloc>(context);

    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PlayerShowNations(ranks: player.ranks),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  player.jobString,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                OnlineIndicator(onlineFlag: player.online),
                BlocBuilder<UserSettingsBloc, UserSettingsState>(
                  builder: (context, state) {
                    bool value = false;

                    if (state is UserSettingsFetched) {
                      value = state.favourites
                          .any((element) => element.name == player.name);
                    }

                    return FavouriteButton(
                      value: value,
                      onPressed: (bool favourited) {
                        if (favourited) {
                          settingsBloc
                              .add(UserSettingsAddFavourite(player: player));
                        } else {
                          settingsBloc
                              .add(UserSettingsRemoveFavourite(player: player));
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        PlayerJobsCard(jobs: player.jobs),
        PlayerCraftingCard(crafts: crafts),
      ],
    );
  }
}

class FavouriteButton extends StatelessWidget {
  final bool value;
  final Function onPressed;

  const FavouriteButton({Key key, this.value, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Favourite this player",
      child: IconButton(
        icon: Icon(getIcon()),
        onPressed: () {
          onPressed(!value);
        },
        color: getColour(),
      ),
    );
  }

  Color getColour() {
    return value ? Colors.yellow : Colors.black;
  }

  IconData getIcon() {
    return value ? Icons.star : Icons.star_border_outlined;
  }
}
