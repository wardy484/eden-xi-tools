import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemOwnersList extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final List<Owner> owners;

  const ItemOwnersList({
    Key? key,
    required this.onRefresh,
    required this.owners,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: owners.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(owners[index].name),
            ),
          );
        },
      ),
    );
  }
}
