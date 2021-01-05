import 'package:eden_xi_tools/eden/items/entities/item/item.dart';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemShowShacked extends StatelessWidget {
  final Item item;
  final int currentPageIndex;

  const ItemShowShacked({
    Key key,
    this.item,
    this.currentPageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
              child: StackToggleButton(currentPageIndex: currentPageIndex),
            ),
            Divider(
              height: 8,
              indent: 16,
              endIndent: 16,
            ),
          ],
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
          label: "Show history for stacks",
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
