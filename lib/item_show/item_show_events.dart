import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ItemShowEvent extends Equatable {
  const ItemShowEvent();

  @override
  List<Object> get props => [];
}

class ItemShowClear extends ItemShowEvent {}

class ItemShowRequested extends ItemShowEvent {
  final String key;
  final bool stacked;

  const ItemShowRequested({@required this.key, this.stacked = false})
      : assert(key != null);

  @override
  List<Object> get props => [key, stacked];
}

class ItemShowRefreshed extends ItemShowEvent {}
