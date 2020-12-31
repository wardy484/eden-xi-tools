import 'package:eden_xi_tools/item_show/views/item_show_refresh_button.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/eden/items/entities/item.dart';
import 'package:eden_xi_tools/item_show/item_show_state.dart';
import 'package:eden_xi_tools/item_show/views/item_show_navigation_bar.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';
import 'package:eden_xi_tools/item_show/views/states/item_show_success_header.dart';
import 'package:eden_xi_tools/item_show/views/tabs/item_show_auction_house.dart';
import 'package:eden_xi_tools/item_show/views/tabs/item_show_bazaar.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';

class ItemShowSuccessState extends StatelessWidget {
  final ItemShowSuccess state;
  final int currentPageIndex;
  final Function onRefreshPressed;
  final Function(bool newValue) toggleStack;
  final ItemShowNavigationBar navigationBar;

  const ItemShowSuccessState({
    Key key,
    @required this.state,
    @required this.currentPageIndex,
    @required this.onRefreshPressed,
    @required this.toggleStack,
    @required this.navigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = state.item;

    return ItemShowScaffold(
      header: ItemShowSuccessHeader(item: item),
      actions: <Widget>[
        ItemShowRefreshButton(
          onPressed: () => onRefreshPressed(state.showStacked),
        ),
      ],
      body: Column(
        children: [
          Padding(
            padding: BoxPadding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Text(state.item.desc)),
                    if (state.item.stackable && currentPageIndex == 0)
                      LabelledSwitch(
                        label: "Stacked",
                        value: state.showStacked,
                        onChanged: toggleStack,
                      )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: <Widget>[
              ItemShowAuctionHouse(items: state.auctionHouseItems),
              ItemShowBazaar(items: state.bazaarItems),
            ].elementAt(currentPageIndex),
          ),
        ],
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
