// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_registry.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$BlocInjector extends BlocInjector {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory(
          (c) => ItemSearchBloc(itemRepository: c<ItemRepository>()))
      ..registerFactory(
          (c) => PlayerSearchBloc(playerRepository: c<PlayerRepository>()))
      ..registerFactory(
          (c) => ItemShowBloc(itemRepository: c<ItemRepository>()))
      ..registerFactory(
          (c) => ItemAuctionHouseBloc(itemRepository: c<ItemRepository>()))
      ..registerFactory(
          (c) => ItemBazaarBloc(itemRepository: c<ItemRepository>()))
      ..registerFactory((c) => ItemOwnersBloc(c<ItemRepository>()))
      ..registerFactory(
          (c) => PlayerShowBloc(playerRepository: c<PlayerRepository>()))
      ..registerFactory((c) => ItemFavouritesBloc())
      ..registerFactory((c) => PlayerFavouritesBloc())
      ..registerFactory((c) => PlayerEquipmentBloc(c<PlayerRepository>()))
      ..registerFactory((c) => SettingsBloc());
  }
}
