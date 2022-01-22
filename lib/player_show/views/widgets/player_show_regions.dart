import 'package:eden_xi_tools/eden/player/entities/player_ranks/player_ranks.dart';
import 'package:eden_xi_tools/widgets/flags/bastok_flag.dart';
import 'package:eden_xi_tools/widgets/flags/sandoria_flag.dart';
import 'package:eden_xi_tools/widgets/flags/windhurst_flag.dart';
import 'package:flutter/material.dart';

class PlayerShowNations extends StatelessWidget {
  final PlayerRanks ranks;

  const PlayerShowNations({
    Key? key,
    required this.ranks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SandoriaFlag(width: 25, height: 25),
        SizedBox(width: 5),
        Text(ranks.sandoria.toString()),
        SizedBox(width: 8),
        BastokFlag(width: 25, height: 25),
        SizedBox(width: 5),
        Text(ranks.bastok.toString()),
        SizedBox(width: 8),
        WindhurstFlag(width: 25, height: 25),
        SizedBox(width: 5),
        Text(ranks.windurst.toString()),
      ],
    );
  }
}
