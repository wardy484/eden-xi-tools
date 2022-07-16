import 'package:eden_xi_tools/item_search/widgets/search_field.dart';
import 'package:eden_xi_tools/player_search/player_search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerSearchField extends ConsumerWidget {
  const PlayerSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PlayerSearchNotifier playerSearch = ref.read(playerSearchProvider.notifier);

    return SearchField(
      onChange: (String value) {
        playerSearch.search(value);
      },
      onClear: () {
        playerSearch.clear();
      },
    );
  }
}
