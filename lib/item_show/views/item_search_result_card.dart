import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/pages/item_show_page.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';

class ItemSearchCard extends StatelessWidget {
  final SearchResultItem item;
  final Widget? icon;

  const ItemSearchCard({
    Key? key,
    required this.item,
    this.icon = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: ItemIcon(id: item.id),
      title: Text(
        item.name,
      ),
      trailing: icon == null ? Icon(Icons.arrow_forward_ios, size: 15) : icon,
      onTap: () => _navigate(context),
    );
  }

  void _navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ItemShowPage(
          item: item,
        ),
      ),
    );
  }
}
