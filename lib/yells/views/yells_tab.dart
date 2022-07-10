import 'dart:async';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/yells/views/yell_line.dart';
import 'package:eden_xi_tools/yells/yells_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class YellsTab extends ConsumerStatefulWidget {
  YellsTab({Key? key}) : super(key: key);

  @override
  _YellsTabState createState() => _YellsTabState();
}

class _YellsTabState extends ConsumerState<YellsTab> {
  @override
  void initState() {
    super.initState();

    ref.read(yellsProvider.notifier).fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff120D37),
      child: ref.watch(yellsProvider).maybeWhen(
            loaded: (yells) => RefreshIndicator(
              onRefresh: () async {
                ref.read(yellsProvider.notifier).fetch();
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
            orElse: () => CenteredLoader(),
          ),
    );
  }
}
