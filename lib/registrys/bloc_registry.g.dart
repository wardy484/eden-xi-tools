// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_registry.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$BlocInjector extends BlocInjector {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory(
        (c) => ItemSearchBloc(itemRepository: c<ItemRepository>()));
    container.registerFactory(
        (c) => PlayerSearchBloc(playerRepository: c<PlayerRepository>()));
    container.registerFactory(
        (c) => ItemShowBloc(itemRepository: c<ItemRepository>()));
    container.registerFactory(
        (c) => ItemAuctionHouseBloc(itemRepository: c<ItemRepository>()));
    container.registerFactory(
        (c) => ItemBazaarBloc(itemRepository: c<ItemRepository>()));
    container.registerFactory(
        (c) => PlayerShowBloc(playerRepository: c<PlayerRepository>()));
    container.registerFactory((c) => ItemFavouritesBloc());
    container.registerFactory((c) => PlayerFavouritesBloc());
    container
        .registerFactory((c) => PlayerEquipmentBloc(c<PlayerRepository>()));
    container.registerFactory((c) => SettingsBloc());
  }
}
