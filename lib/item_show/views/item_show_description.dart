import 'package:eden_xi_tools/eden/items/entities/item/item.dart';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemShowDescription extends StatelessWidget {
  final Item item;
  final int currentPageIndex;

  const ItemShowDescription({
    Key key,
    this.item,
    this.currentPageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Card(
          child: Padding(
            padding: BoxPadding,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(item.desc)),
                      StackToggleButton(currentPageIndex: currentPageIndex),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(),
        ),
      ],
    );
  }
}

class StackToggleButton extends StatelessWidget {
  final int currentPageIndex;

  const StackToggleButton({Key key, this.currentPageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemAuctionHouseBloc, ItemAuctionHouseState>(
      builder: (context, state) {
        return LabelledSwitch(
          label: "Stacked",
          value: state.stacked,
          onChanged: (value) => _onChanged(context, value),
        );
      },
    );
  }

  _onChanged(context, bool value) {
    BlocProvider.of<ItemAuctionHouseBloc>(context)
        .add(ItemAuctionHouseStackToggled(stacked: value));
  }
}
