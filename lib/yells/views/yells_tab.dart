import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/yells/views/yell_line.dart';
import 'package:eden_xi_tools/yells/yells_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class YellsTab extends ConsumerWidget {
  YellsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: const Color(0xff120D37),
      child: ref.watch(yellsControllerProvider).maybeWhen(
            data: (yells) => RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(yellsControllerProvider);
                return ref.read(yellsControllerProvider.future);
              },
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: yells.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      YellLine(yell: yells[index]),
                      SizedBox(height: 8),
                    ],
                  );
                },
              ),
            ),
            error: (_, __) => Center(
              child: Text(
                "Unable to fetch yells, please try again later",
                style: TextStyle(color: Colors.white),
              ),
            ),
            orElse: () => CenteredLoader(),
          ),
    );
  }
}
