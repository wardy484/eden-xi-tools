import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class DashboardFavouritesCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Function() onViewMoreTapped;

  const DashboardFavouritesCard({
    Key? key,
    required this.title,
    required this.children,
    required this.onViewMoreTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: title,
      body: Column(children: children),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: TextButton(
              child: const Text('MORE'),
              onPressed: onViewMoreTapped,
            ),
          )
        ],
      ),
    );
  }
}
