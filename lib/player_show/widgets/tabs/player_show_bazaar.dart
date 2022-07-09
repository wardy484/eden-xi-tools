import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_show/pages/item_show_page.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:eden_xi_tools/extensions/int.dart';

class PlayerShowBazaar extends ConsumerStatefulWidget {
  final List<PlayerBazaarItem> items;
  final Future<void> Function() onRefresh;

  const PlayerShowBazaar({
    Key? key,
    required this.items,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _PlayerShowBazaarState createState() => _PlayerShowBazaarState();
}

class _PlayerShowBazaarState extends ConsumerState<PlayerShowBazaar> {
  late SnackBar _snackbar;

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
              item.itemName,
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

  _navigateToItem(
    String itemName,
    BuildContext context,
  ) async {
    var name = Uri.encodeFull(itemName);
    var item = await ref.read(edenProvider).items.getItem(name);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    // ignore: unnecessary_null_comparison
    if (item != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemShowPage(
            item: SearchResultItem(
              id: item.id,
              name: ReCase(item.name).titleCase,
              sort: name,
              key: name,
            ),
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
