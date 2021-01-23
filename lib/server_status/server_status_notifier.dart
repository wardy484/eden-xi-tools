import 'package:eden_xi_tools/eden/eden_client.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:eden_xi_tools/server_status/server_status.dart';

final serverStatusProvider = StateNotifierProvider<ServerStatusStateNotifier>(
    (ref) => ServerStatusStateNotifier(ref));

class ServerStatusStateNotifier extends StateNotifier<ServerStatusState> {
  final MiscRepository miscRepository;

  ServerStatusStateNotifier(ProviderReference ref)
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
