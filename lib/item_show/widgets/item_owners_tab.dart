import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemOwnersTab extends StatefulWidget {
  final List<Owner> owners;
  final Future<void> Function() onRefresh;

  const ItemOwnersTab({
    Key? key,
    required this.owners,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ItemOwnersTabState createState() => _ItemOwnersTabState();
}

class _ItemOwnersTabState extends State<ItemOwnersTab> {
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.owners.length < 1) {
      child = Text("No players own this item yet!");
    } else {
      child = ListView.builder(
        itemCount: widget.owners.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(widget.owners[index].name),
            ),
          );
        },
      );
    }

    return RefreshIndicator(
      child: child,
      onRefresh: widget.onRefresh,
    );
  }
}
