import 'package:equatable/equatable.dart';

abstract class ItemShowEvent extends Equatable {
  const ItemShowEvent();

  @override
  List<Object> get props => [];
}

class ItemShowClear extends ItemShowEvent {}

class ItemShowRequested extends ItemShowEvent {
  final String key;
  final bool stacked;

  const ItemShowRequested({required this.key, this.stacked = false});

  @override
  List<Object> get props => [key, stacked];
}

class ItemShowRefreshed extends ItemShowEvent {}
