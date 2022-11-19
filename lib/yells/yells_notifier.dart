import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/yells/yells_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final yellsProvider =
    StateNotifierProvider.autoDispose<YellsNotifier, YellsState>((ref) {
  return YellsNotifier(
    eden: ref.read(edenProvider),
  );
});

class YellsNotifier extends StateNotifier<YellsState> {
  final EdenXiApi eden;

  YellsNotifier({
    required this.eden,
  }) : super(YellsState.initial());

  void fetch() async {
    state = YellsState.loading();

    try {
      final yells = await eden.server.getYells();

      state = YellsState.loaded(yells);
    } catch (error, stackTrace) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );

      state =
          YellsState.error("Failed to fetch yells, please try again later.");
    }
  }
}
