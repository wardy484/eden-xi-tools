import 'package:eden_xi_tools/item_show/item_show_notifier.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StackToggleButton extends ConsumerWidget {
  final int currentPageIndex;

  const StackToggleButton({
    Key? key,
    required this.currentPageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stacked = ref.watch(itemShowProvider).stacked;

    return LabelledSwitch(
      label: "Stacked:",
      value: stacked,
      onChanged: (value) {
        ref.read(itemShowProvider.notifier).toggleStacked();
      },
    );
  }
}
