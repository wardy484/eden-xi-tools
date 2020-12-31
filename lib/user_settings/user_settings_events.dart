import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UserSettingsEvent extends Equatable {
  const UserSettingsEvent();

  @override
  List<Object> get props => [];
}

class UserSettingsInitial extends UserSettingsEvent {}

class UserSettingsFetch extends UserSettingsEvent {}

class UserSettingsAddFavourite extends UserSettingsEvent {
  final Player player;

  const UserSettingsAddFavourite({@required this.player})
      : assert(player != null);
}

class UserSettingsRemoveFavourite extends UserSettingsEvent {
  final Player player;

  const UserSettingsRemoveFavourite({@required this.player})
      : assert(player != null);
}
