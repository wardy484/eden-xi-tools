import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/crafts/craft.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itemcrafts_state.dart';
part 'itemcrafts_cubit.freezed.dart';

class ItemcraftsCubit extends Cubit<ItemcraftsState> {
  final ItemRepository itemRepository;

  ItemcraftsCubit({required this.itemRepository})
      : super(ItemcraftsState.initial());

  Future<void> getCrafts(String key) async {
    emit(ItemcraftsState.loading());

    emit(
      ItemcraftsState.Loaded(
        await itemRepository.getCrafts(key),
      ),
    );
  }
}
