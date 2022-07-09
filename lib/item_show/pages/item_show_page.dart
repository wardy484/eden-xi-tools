import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_auction_house/pages/item_auction_house_page.dart';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/pages/item_bazaar_page.dart';
import 'package:eden_xi_tools/item_crafts/cubit/itemcrafts_cubit.dart';
import 'package:eden_xi_tools/item_crafts/pages/item_crafts_page.dart';
import 'package:eden_xi_tools/item_favourites/views/item_favourite_button.dart';
import 'package:eden_xi_tools/item_owners/bloc/bloc/item_owners_bloc.dart';
import 'package:eden_xi_tools/item_owners/item_owners_page.dart';
import 'package:eden_xi_tools/item_show/views/item_show_description.dart';
import 'package:eden_xi_tools/item_show/views/item_show_header.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/item_show/item_show.dart';
import 'package:eden_xi_tools/item_show/views/item_show_navigation_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemShowPage extends ConsumerStatefulWidget {
  final SearchResultItem item;

  const ItemShowPage({Key? key, required this.item}) : super(key: key);

  @override
  _ItemShowPageState createState() => _ItemShowPageState();
}

class _ItemShowPageState extends ConsumerState<ItemShowPage> {
  int _selectedPageIndex = 0;
  late ItemShowBloc _showItemBloc;
  late ItemBazaarBloc _bazaarBloc;
  late ItemAuctionHouseBloc _auctionHouseBloc;
  late ItemOwnersBloc _itemOwnersBloc;
  late ItemCraftsCubit _craftsCubit;

  @override
  void initState() {
    super.initState();
    _showItemBloc = ref.read(itemShowProvider);
    _bazaarBloc = ref.read(itemBazaarProvider);
    _auctionHouseBloc = ref.read(itemAuctionHouseProvider);
    _itemOwnersBloc = ref.read(itemOwnersProvider);
    _craftsCubit = ref.read(itemCraftsProvider);

    _showItemBloc.add(ItemShowRequested(key: widget.item.key));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _showItemBloc),
        BlocProvider.value(value: _bazaarBloc),
        BlocProvider.value(value: _auctionHouseBloc),
        BlocProvider.value(value: _itemOwnersBloc),
        BlocProvider.value(value: _craftsCubit),
      ],
      child: BlocBuilder<ItemAuctionHouseBloc, ItemAuctionHouseState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: ItemShowHeader(item: widget.item),
              actions: [
                ItemFavouriteButton(item: widget.item),
              ],
            ),
            body: BlocBuilder<ItemShowBloc, ItemShowState>(
              builder: (context, state) {
                if (state is ItemShowInitial) {
                  return CenteredLoader();
                }

                if (state is ItemShowSuccess) {
                  return Column(
                    children: [
                      ItemShowDescription(
                        item: state.item,
                        currentPageIndex: _selectedPageIndex,
                      ),
                      Expanded(
                        child: SwipablePages(
                          pages: [
                            if (OwnableItems.contains(widget.item.id))
                              ItemOwnersPage(item: state.item),
                            ItemAuctionHousePage(itemKey: state.item.key),
                            ItemBazaarPage(itemKey: state.item.key),
                            ItemCraftsPage(itemKey: state.item.key),
                          ],
                          index: _selectedPageIndex,
                          onSwipe: _onPageNavigation,
                        ),
                      ),
                    ],
                  );
                }

                return CenteredMessage(
                  "Failed to fetch item, please try again later",
                );
              },
            ),
            bottomNavigationBar: ItemShowNavigationBar(
              currentIndex: _selectedPageIndex,
              onTap: _onPageNavigation,
              item: widget.item,
            ),
          );
        },
      ),
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }

  @override
  void dispose() {
    _showItemBloc.close();
    _bazaarBloc.close();
    _auctionHouseBloc.close();
    _itemOwnersBloc.close();

    super.dispose();
  }
}
