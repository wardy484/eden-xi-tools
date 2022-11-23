import 'dart:async';

import 'package:eden_xi_tools/item_show/item_show_controller.dart';
import 'package:eden_xi_tools/item_show/widgets/item_auction_house_tab.dart';
import 'package:eden_xi_tools/item_show/widgets/item_bazaar_tab.dart';
import 'package:eden_xi_tools/item_show/widgets/item_crafts_tab.dart';
import 'package:eden_xi_tools/item_favourites/views/item_favourite_button.dart';
import 'package:eden_xi_tools/item_show/widgets/item_owners_tab.dart';
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
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final item = ref.watch(itemShowControllerProvider(
      widget.item.key,
      stacked: ref.watch(itemStackedProvider),
    ));

    return Scaffold(
      appBar: AppBar(
        title: ItemShowHeader(item: widget.item),
        actions: [
          ItemFavouriteButton(item: widget.item),
        ],
      ),
      body: item.maybeWhen(
        data: (item) {
          return Column(
            children: [
              ItemShowDescription(
                item: item.details,
                currentPageIndex: _selectedPageIndex,
              ),
              Expanded(
                child: SwipablePages(
                  pages: [
                    if (OwnableItems.contains(widget.item.id))
                      ItemOwnersTab(
                        owners: item.owners,
                        onRefresh: _refreshPage,
                      ),
                    ItemAuctionHouseTab(
                      items: item.auctionHouseItems,
                      onRefresh: _refreshPage,
                    ),
                    ItemBazaarTab(
                      items: item.bazaarItems,
                      onRefresh: _refreshPage,
                    ),
                    ItemCraftsTab(
                      crafts: item.crafts,
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
        error: (_, __) => CenteredMessage(
          "Failed to load item, try again later.",
        ),
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
    ref.invalidate(itemShowControllerProvider);

    return ref.read(
      itemShowControllerProvider(
        widget.item.key,
        stacked: ref.read(itemStackedProvider),
      ).future,
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }
}
