import 'package:eden_xi_tools/item_show/item_show_controller.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StackToggleButton extends ConsumerWidget {
  final int itemKey;

  const StackToggleButton({
    Key? key,
    required this.itemKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LabelledSwitch(
      label: "Stacked:",
      value: ref.watch(itemStackedProvider),
      onChanged: (value) {
        ref.read(itemStackedProvider.notifier).state = value;
        ref.invalidate(itemShowControllerProvider);
        ref.read(itemShowControllerProvider(itemKey, stacked: value));
      },
    );
  }
}
