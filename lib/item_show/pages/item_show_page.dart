import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_auction_house/pages/item_auction_house_page.dart';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/pages/item_bazaar_page.dart';
import 'package:eden_xi_tools/item_favourites/views/item_favourite_button.dart';
import 'package:eden_xi_tools/item_show/views/item_show_description.dart';
import 'package:eden_xi_tools/item_show/views/item_show_header.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/item_show/item_show.dart';
import 'package:eden_xi_tools/item_show/views/item_show_navigation_bar.dart';
import 'package:kiwi/kiwi.dart';

class ItemShowPage extends StatefulWidget {
  final SearchResultItem item;

  const ItemShowPage({Key key, this.item}) : super(key: key);

  @override
  _ItemShowPageState createState() => _ItemShowPageState();
}

class _ItemShowPageState extends State<ItemShowPage> {
  int _selectedPageIndex = 0;
  ItemShowBloc _showItemBloc;
  ItemBazaarBloc _bazaarBloc;
  ItemAuctionHouseBloc _auctionHouseBloc;

  @override
  void initState() {
    super.initState();
    KiwiContainer container = KiwiContainer();

    _showItemBloc = container.resolve<ItemShowBloc>();
    _bazaarBloc = container.resolve<ItemBazaarBloc>();
    _auctionHouseBloc = container.resolve<ItemAuctionHouseBloc>();

    _showItemBloc.add(ItemShowRequested(key: widget.item.key));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _showItemBloc),
        BlocProvider.value(value: _bazaarBloc),
        BlocProvider.value(value: _auctionHouseBloc),
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
                            ItemAuctionHousePage(itemKey: state.item.key),
                            ItemBazaarPage(itemKey: state.item.key),
                          ],
                          index: _selectedPageIndex,
                          onSwipe: _onPageNavigation,
                        ),
                      ),
                    ],
                  );
                }

                return CenteredMessage(
                    "Failed to fetch item, please try again later");
              },
            ),
            bottomNavigationBar: ItemShowNavigationBar(
              currentIndex: _selectedPageIndex ?? 0,
              onTap: _onPageNavigation,
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

    super.dispose();
  }
}
