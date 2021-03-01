import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
import 'package:flutter/material.dart';

class ItemOwnersList extends StatelessWidget {
  final Function onRefresh;
  final List<Owner> owners;

  const ItemOwnersList({
    Key key,
    this.onRefresh,
    this.owners,
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
