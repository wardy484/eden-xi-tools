import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Widget header;
  final Widget body;
  final Widget footer;

  const CustomCard({
    Key key,
    this.header,
    this.title,
    @required this.body,
    this.footer,
  })  : assert(
          !(header != null && title != null),
          "Only a header or title can be provided.",
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (header != null)
            Column(
              children: [
                header,
                Divider(),
              ],
            ),
          if (title != null)
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(title,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          body,
          if (footer != null)
            Column(
              children: [
                Divider(),
                footer,
              ],
            )
        ],
      ),
    );
  }
}
