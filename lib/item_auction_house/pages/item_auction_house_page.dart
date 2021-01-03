import 'dart:async';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_auction_house/views/item_auction_house_list.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemAuctionHousePage extends StatefulWidget {
  final String itemKey;

  const ItemAuctionHousePage({
    Key key,
    this.itemKey,
  }) : super(key: key);

  @override
  _ItemAuctionHousePageState createState() => _ItemAuctionHousePageState();
}

class _ItemAuctionHousePageState extends State<ItemAuctionHousePage> {
  Completer<void> _refreshCompleter;
  ItemAuctionHouseBloc _auctionHouseBloc;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    _auctionHouseBloc = BlocProvider.of<ItemAuctionHouseBloc>(context);

    if (_auctionHouseBloc.state is ItemAuctionHouseInitial) {
      _auctionHouseBloc.add(
        ItemAuctionHouseRequested(
          itemKey: widget.itemKey,
          stacked: false,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemAuctionHouseBloc, ItemAuctionHouseState>(
      listener: (context, state) {
        if (state is ItemAuctionHouseSuccess) {
          _refreshCompleter?.complete();
          _refreshCompleter = Completer();
        }
      },
      builder: (context, state) {
        if (state is ItemAuctionHouseSuccess) {
          if (state.auctionHouseItems.length < 1) {
            return SwipablePageContent(
              child: Text("No auction house history.."),
            );
          }

          return ItemAuctionHouseList(
            onRefresh: () {
              _auctionHouseBloc.add(ItemAuctionHouseRefreshed());
              return _refreshCompleter.future;
            },
            items: state.auctionHouseItems,
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
