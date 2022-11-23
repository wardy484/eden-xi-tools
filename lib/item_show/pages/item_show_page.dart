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
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/widgets/item_show_navigation_bar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemShowPage extends StatefulHookConsumerWidget {
  final SearchResultItem item;

  const ItemShowPage({Key? key, required this.item}) : super(key: key);

  @override
  _ItemShowPageState createState() => _ItemShowPageState();
}

class _ItemShowPageState extends ConsumerState<ItemShowPage> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
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
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => setState(
                    () => _selectedPageIndex = value,
                  ),
                  children: [
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
                ),
              ),
            ],
          );
        },
        error: (_, __) => CenteredMessage(
          "Failed to load item, try again later.",
        ),
        orElse: () => CenteredLoader(),
      ),
      bottomNavigationBar: ItemShowNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (int index) {
          setState(() => _selectedPageIndex = index);

          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
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
}
