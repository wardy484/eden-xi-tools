import 'package:eden_xi_tools/item_search/item_search_notifier.dart';
import 'package:eden_xi_tools/item_search/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemSearchField extends ConsumerWidget {
  const ItemSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchField(
      onChange: (String value) {
        ref.read(itemSearchProvider.notifier).getItem(
              value.trim(),
              append: false,
            );
      },
      onClear: () {
        ref.read(itemSearchProvider.notifier).clear();
      },
    );
  }
}
