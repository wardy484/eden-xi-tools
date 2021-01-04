import 'dart:async';

import 'package:eden_xi_tools/settings/entities/settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends HydratedBloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_Initial(InitialSettings));

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield event.when(
      saved: (Settings settings) => SettingsState.loaded(settings),
    );
  }

  @override
  SettingsState fromJson(Map<String, dynamic> json) {
    try {
      if (json != null) {
        return SettingsState.loaded(
          Settings.fromJson(json),
        );
      }

      return SettingsState.initial(InitialSettings);
    } catch (_) {
      return SettingsState.initial(InitialSettings);
    }
  }

  @override
  Map<String, dynamic> toJson(SettingsState state) {
    return state.when(
      initial: (Settings settings) => null,
      loaded: (Settings settings) => settings.toJson(),
    );
  }
}
