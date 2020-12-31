import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:equatable/equatable.dart';

abstract class UserSettingsState extends Equatable {
  const UserSettingsState();

  @override
  List<Object> get props => [];
}

class UserSettingsEmpty extends UserSettingsState {}

class UserSettingsFetched extends UserSettingsState {
  final List<Player> favourites;

  const UserSettingsFetched({this.favourites});

  @override
  List<Object> get props => [
        favourites,
      ];

  @override
  String toString() => 'User Settings Fetched { favourites: $favourites }';
}
