import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_search_state.freezed.dart';

@freezed
class ItemSearchState with _$ItemSearchState {
  const factory ItemSearchState.initial({
    required String itemName,
  }) = ItemSearchStateInitial;

  const factory ItemSearchState.loading({
    required String itemName,
  }) = ItemSearchStateLoading;

  const factory ItemSearchState.loaded({
    required String itemName,
    required SearchResult searchResult,
    required int page,
    required bool isLastPage,
  }) = ItemSearchStateLoaded;

  const factory ItemSearchState.error({
    required String itemName,
    required String message,
  }) = ItemSearchStateError;
}
