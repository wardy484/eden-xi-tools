import 'package:eden_xi_tools/eden/eden_client.dart';
import 'package:eden_xi_tools/server_status/server_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final serverStatusProvider =
    StateNotifierProvider<ServerStatusStateNotifier, ServerStatusState>(
  (Ref ref) {
    return ServerStatusStateNotifier(ref);
  },
);

class ServerStatusStateNotifier extends StateNotifier<ServerStatusState> {
  final MiscRepository miscRepository;

  ServerStatusStateNotifier(Ref ref)
      : miscRepository = ref.read(miscRepositoryProvider),
        super(ServerStatusState.initial());

  void fetch() async {
    state = ServerStatusState.loading();

    try {
      final status = await miscRepository.get();

      state = ServerStatusState.fetched(status);
    } catch (error) {
      print(error);
    }
  }
}
