part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.saved(Settings settings) = _Saved;
}
