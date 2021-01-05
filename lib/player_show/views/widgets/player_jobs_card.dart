import 'package:eden_xi_tools/eden/player/entities/player_jobs/player_jobs.dart';
import 'package:eden_xi_tools/player_show/views/widgets/factory/PlayerFactory.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class PlayerJobsCard extends StatelessWidget {
  final PlayerJobs jobs;

  const PlayerJobsCard({Key key, this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Jobs",
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 6,
          physics: NeverScrollableScrollPhysics(),
          children: PlayerFactory.makeJobsList(jobs),
        ),
      ),
    );
  }
}
