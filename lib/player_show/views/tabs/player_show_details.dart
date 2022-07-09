import 'package:eden_xi_tools/player_equipment/views/player_equipment_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_crafting_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_jobs_card.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_show_regions.dart';
import 'package:eden_xi_tools/widgets/online_indicator.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class PlayerShowDetails extends StatelessWidget {
  final Player player;
  final PlayerCrafts crafts;
  final Future<void> Function() onRefresh;

  const PlayerShowDetails({
    Key? key,
    required this.player,
    required this.crafts,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    bool isScreenNarrow = MediaQuery.of(context).size.width <= 354;

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Flex(
                direction: isScreenNarrow ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: isScreenNarrow
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: isScreenNarrow
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      PlayerShowNations(ranks: player.ranks),
                    ],
                  ),
                  if (isScreenNarrow)
                    SizedBox(
                      height: 16,
                      width: 1000,
                    ),
                  Row(
                    mainAxisAlignment: isScreenNarrow
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
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
