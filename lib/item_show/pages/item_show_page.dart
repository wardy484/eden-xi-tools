import 'dart:async';

import 'package:eden_xi_tools/item_show/widgets/item_auction_house_tab.dart';
import 'package:eden_xi_tools/item_show/widgets/item_bazaar_tab.dart';
import 'package:eden_xi_tools/item_show/widgets/item_crafts_tab.dart';
import 'package:eden_xi_tools/item_favourites/views/item_favourite_button.dart';
import 'package:eden_xi_tools/item_show/widgets/item_owners_tab.dart';
import 'package:eden_xi_tools/item_show/item_show_notifier.dart';
import 'package:eden_xi_tools/item_show/widgets/item_show_description.dart';
import 'package:eden_xi_tools/item_show/widgets/item_show_header.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/widgets/item_show_navigation_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemShowPage extends ConsumerStatefulWidget {
  final SearchResultItem item;

  const ItemShowPage({Key? key, required this.item}) : super(key: key);

  @override
  _ItemShowPageState createState() => _ItemShowPageState();
}

class _ItemShowPageState extends ConsumerState<ItemShowPage> {
  late Completer<void> _refreshCompleter;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();

    ref.read(itemShowProvider.notifier).getItem(
          widget.item.key.toString(),
          false,
        );

    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ItemShowHeader(item: widget.item),
        actions: [
          ItemFavouriteButton(item: widget.item),
        ],
      ),
      body: ref.watch(itemShowProvider).maybeWhen(
            loaded: (
              key,
              item,
              bazaarItems,
              owners,
              auctionItems,
              crafts,
              stacked,
            ) {
              return Column(
                children: [
                  ItemShowDescription(
                    item: item,
                    currentPageIndex: _selectedPageIndex,
                  ),
                  Expanded(
                    child: SwipablePages(
                      pages: [
                        if (OwnableItems.contains(widget.item.id))
                          ItemOwnersTab(
                            owners: owners,
                            onRefresh: _refreshPage,
                          ),
                        ItemAuctionHouseTab(
                          items: auctionItems,
                          onRefresh: _refreshPage,
                        ),
                        ItemBazaarTab(
                          items: bazaarItems,
                          onRefresh: _refreshPage,
                        ),
                        ItemCraftsTab(
                          crafts: crafts,
                          onRefresh: _refreshPage,
                        ),
                      ],
                      index: _selectedPageIndex,
                      onSwipe: _onPageNavigation,
                    ),
                  ),
                ],
              );
            },
            error: (stacked, message) => CenteredMessage(message),
            orElse: () => const Center(
              child: CenteredLoader(),
            ),
          ),
      bottomNavigationBar: ItemShowNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onPageNavigation,
        item: widget.item,
      ),
    );
  }

  Future<void> _refreshPage() {
    ref.watch(itemShowProvider.notifier).getItem(
          widget.item.key.toString(),
          ref.read(itemShowProvider).stacked,
        );

    return _refreshCompleter.future;
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
