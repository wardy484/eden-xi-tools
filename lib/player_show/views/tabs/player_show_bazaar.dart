import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/eden/player/entities/player_bazaar_item/player_bazaar_item.dart';
import 'package:eden_xi_tools/item_show/pages/item_show_page.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:recase/recase.dart';
import 'package:eden_xi_tools/extensions/int.dart';

class PlayerShowBazaar extends StatefulWidget {
  final List<PlayerBazaarItem> items;
  final Function onRefresh;

  const PlayerShowBazaar({
    Key key,
    @required this.items,
    @required this.onRefresh,
  }) : super(key: key);

  @override
  _PlayerShowBazaarState createState() => _PlayerShowBazaarState();
}

class _PlayerShowBazaarState extends State<PlayerShowBazaar> {
  SnackBar _snackbar;

  @override
  Widget build(BuildContext context) {
    if (widget.items.length < 1) {
      return CenteredMessage("No bazaar history...");
    }

    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          PlayerBazaarItem item = widget.items[index];
          ReCase name = new ReCase(item.itemName);

          return GestureDetector(
            onTap: () => _navigateToItem(
              name.titleCase.replaceAll("+1", ""),
              context,
            ),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              name.titleCase,
                              style: SubHeading,
                            ),
                          ],
                        ),
                        Padding(
                          padding: BoxPaddingRight,
                          child: Text(item.bazaar.toGil()),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _navigateToItem(String itemName, context) async {
    var itemRepository = KiwiContainer().resolve<ItemRepository>();
    var items = await itemRepository.search(itemName, 0, 1);

    if (_snackbar != null) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    }

    if (items.total > 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemShowPage(
            item: items.items.first,
          ),
        ),
      );
    } else {
      _snackbar = SnackBar(
        content: Text("Unable to find item on auction house."),
        duration: Duration(seconds: 4),
      );

      ScaffoldMessenger.of(context).showSnackBar(_snackbar);
    }
  }
}
