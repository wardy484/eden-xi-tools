part of 'settings_bloc.dart';

final Settings InitialSettings = Settings(
  maxItemsOnDashboard: 4,
  maxPlayersOnDashboard: 4,
);

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial(Settings settings) = _Initial;
  const factory SettingsState.loaded(Settings settings) = _Loaded;
}
