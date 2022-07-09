import 'dart:async';
import 'package:eden_xi_tools/item_crafts/cubit/itemcrafts_cubit.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCraftsPage extends StatefulWidget {
  final String itemKey;

  const ItemCraftsPage({
    Key? key,
    required this.itemKey,
  }) : super(key: key);

  @override
  _ItemCraftsPageState createState() => _ItemCraftsPageState();
}

class _ItemCraftsPageState extends State<ItemCraftsPage> {
  late Completer<void> _refreshCompleter;
  late ItemCraftsCubit _craftsCubit;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    _craftsCubit = BlocProvider.of<ItemCraftsCubit>(context);

    _craftsCubit.state.whenOrNull(
      initial: () => _craftsCubit.getCrafts(widget.itemKey),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: BlocConsumer<ItemCraftsCubit, ItemcraftsState>(
        listener: (context, state) {
          state.whenOrNull(
            Loaded: (crafts) {
              _refreshCompleter.complete();
              _refreshCompleter = Completer();
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(Loaded: (crafts) {
            if (crafts.length < 1) {
              return Text("No recipes found...");
            }

            return ListView.builder(
              itemCount: crafts.length,
              itemBuilder: (context, index) {
                final Craft craft = crafts[index];

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
                        String type = result.type == "Normal"
                            ? "NQ:  "
                            : result.type + ":";
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
          }, orElse: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          });
        },
      ),
    );
  }
}
