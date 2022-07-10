import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemCraftsTab extends ConsumerStatefulWidget {
  final List<Craft> crafts;
  final Future<void> Function() onRefresh;

  const ItemCraftsTab({
    Key? key,
    required this.crafts,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ItemCraftsTabState createState() => _ItemCraftsTabState();
}

class _ItemCraftsTabState extends ConsumerState<ItemCraftsTab> {
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.crafts.isEmpty) {
      child = ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("No recipes found..."),
            ),
          ),
        ],
      );
    } else {
      child = ListView.builder(
        itemCount: widget.crafts.length,
        itemBuilder: (context, index) {
          final Craft craft = widget.crafts[index];

          return CustomCard(
            header: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: craft.crafts.map((c) {
                  return Row(children: [
                    Text("${c.craft} (${c.level})"),
                    Spacer(),
                    ItemIcon(id: craft.crystal),
                  ]);
                }).toList(),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: craft.ingredients.map((ingredient) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      children: [
                        ItemIcon(id: ingredient.id),
                        SizedBox(width: 14),
                        Text(ingredient.name),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            footer: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: craft.results.map((result) {
                  String type =
                      result.type == "Normal" ? "NQ:  " : result.type + ":";
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      children: [
                        ItemIcon(id: result.id),
                        SizedBox(width: 14),
                        Text(type),
                        SizedBox(width: 14),
                        Text(result.name),
                      ],
                    ),
                  );
                }).toList(),
              ),
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
