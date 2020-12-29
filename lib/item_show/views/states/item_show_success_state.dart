import 'package:flutter/material.dart';
import 'package:getmyshittogether/eden/items/entities/item.dart';
import 'package:getmyshittogether/item_show/item_show_state.dart';
import 'package:getmyshittogether/item_show/views/item_show_navigation_bar.dart';
import 'package:getmyshittogether/item_show/views/item_show_scaffold.dart';
import 'package:getmyshittogether/item_show/views/states/item_show_success_header.dart';
import 'package:getmyshittogether/item_show/views/tabs/item_show_auction_house.dart';
import 'package:getmyshittogether/widgets/labelled_switch.dart';

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
        FlatButton(
          onPressed: () => onRefreshPressed(state.showStacked),
          child: Icon(
            Icons.refresh,
            size: 26.0,
            color: Colors.white,
          ),
        )
      ],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Text(state.item.desc)),
                    if (state.item.stackable)
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
              ItemShowAuctionHouse(
                items: state.auctionHouseItems,
              ),
              Text(
                'Bazaar: Coming soon.',
              ),
            ].elementAt(currentPageIndex),
          ),
        ],
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
