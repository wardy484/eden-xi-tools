// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_registry.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$RepositoryInjector extends RepositoryInjector {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => ItemRepository(client: c<Dio>('EdenClient')))
      ..registerFactory((c) => PlayerRepository(client: c<Dio>('EdenClient')));
  }
}
