import 'package:eden_xi_tools/player_show/player_factory.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PlayerJobsCard extends StatelessWidget {
  final PlayerJobs jobs;

  const PlayerJobsCard({
    Key? key,
    required this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Jobs",
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ResponsiveGridRow(
          children: [
            ...PlayerFactory.makeJobsList(jobs).map(
              (widget) => ResponsiveGridCol(
                child: widget,
                xs: 4,
                sm: 3,
                md: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
