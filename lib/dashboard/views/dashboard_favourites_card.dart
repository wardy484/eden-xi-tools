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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 3,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),
          ...children,
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  left: 8,
                  right: 8,
                ),
                child: TextButton(
                  child: const Text('MORE'),
                  onPressed: onViewMoreTapped,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
