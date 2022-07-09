import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'itemcrafts_state.dart';
part 'itemcrafts_cubit.freezed.dart';

final itemCraftsProvider = Provider.autoDispose<ItemCraftsCubit>(
  (ref) => ItemCraftsCubit(eden: ref.read(edenProvider)),
);

class ItemCraftsCubit extends Cubit<ItemcraftsState> {
  final EdenXiApi eden;

  ItemCraftsCubit({required this.eden}) : super(ItemcraftsState.initial());

  Future<void> getCrafts(String key) async {
    emit(ItemcraftsState.loading());

    emit(
      ItemcraftsState.Loaded(
        await eden.items.getCrafts(key),
      ),
    );
  }
}
