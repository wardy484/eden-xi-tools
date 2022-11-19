import 'package:easy_debounce/easy_debounce.dart';
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
        EasyDebounce.debounce(
          'item-search',
          Duration(milliseconds: 500),
          () => ref
              .read(itemSearchProvider.notifier)
              .search(value.trim(), page: 0),
        );
      },
      onClear: () {
        ref.read(itemSearchProvider.notifier).clear();
      },
    );
  }
}
