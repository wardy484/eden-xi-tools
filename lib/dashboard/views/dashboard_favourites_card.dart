import 'package:flutter/material.dart';

class DashboardFavouritesCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Function onViewMoreTapped;

  const DashboardFavouritesCard({
    Key key,
    @required this.title,
    @required this.children,
    @required this.onViewMoreTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 8),
            ...children,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('View more...'),
                  onPressed: onViewMoreTapped,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
