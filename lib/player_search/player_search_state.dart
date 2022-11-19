import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_search_state.freezed.dart';

@freezed
class PlayerSearchState with _$PlayerSearchState {
  const factory PlayerSearchState.initial({
    required String playerName,
  }) = PlayerSearchStateInitial;

  const factory PlayerSearchState.loading({
    required String playerName,
  }) = PlayerSearchStateLoading;

  const factory PlayerSearchState.loaded({
    required String playerName,
    required PlayerSearchResult results,
    required int page,
    required bool isLastPage,
  }) = PlayerSearchStateLoaded;

  const factory PlayerSearchState.error({
    required String playerName,
    required String message,
  }) = PlayerSearchStateError;
}
