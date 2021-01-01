import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_crafting_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_jobs_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_show_regions.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/widgets/online_indicator.dart';
import 'package:flutter/material.dart';

class PlayerShowDetails extends StatelessWidget {
  final Player player;
  final PlayerCrafts crafts;
  final Function onRefresh;

  const PlayerShowDetails({
    Key key,
    this.player,
    this.crafts,
    this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        padding: BoxPadding,
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
                  ),
                  SizedBox(width: 8),
                  OnlineIndicator(onlineFlag: player.online),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          PlayerJobsCard(jobs: player.jobs),
          PlayerCraftingCard(crafts: crafts),
        ],
      ),
    );
  }
}
