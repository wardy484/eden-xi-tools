import 'package:eden_xi_tools/dashboard/server_status_state.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final serverStatusProvider = StateNotifierProvider.autoDispose<
    ServerStatusStateNotifier, ServerStatusState>(
  (Ref ref) {
    return ServerStatusStateNotifier(
      eden: ref.read(edenProvider),
    );
  },
);

class ServerStatusStateNotifier extends StateNotifier<ServerStatusState> {
  final EdenXiApi eden;

  ServerStatusStateNotifier({required this.eden})
      : super(ServerStatusState.initial());

  void fetch() async {
    state = ServerStatusState.loading();

    try {
      final status = await eden.server.get();

      state = ServerStatusState.fetched(status);
    } catch (error) {
      state = ServerStatusState.loading();
    }
  }
}
