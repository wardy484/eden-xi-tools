import 'package:eden_xi_tools/eden/player/entities/player/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/player_equipment/views/player_equipment_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_crafting_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_jobs_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_show_regions.dart';
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
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlayerShowNations(ranks: player.ranks),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(player.jobString),
                      SizedBox(width: 8),
                      OnlineIndicator(onlineFlag: player.online),
                    ],
                  ),
                ],
              ),
            ),
          ),
          PlayerEquipmentCard(playerName: player.name),
          PlayerJobsCard(jobs: player.jobs),
          PlayerCraftingCard(crafts: crafts),
        ],
      ),
    );
  }
}
