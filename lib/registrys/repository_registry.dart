import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:kiwi/kiwi.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:dio/dio.dart';

part 'repository_registry.g.dart';

class RepositoryRegistry {
  KiwiContainer container;

  RepositoryRegistry() : container = KiwiContainer();

  register() {
    _$RepositoryInjector().configure();
  }
}

abstract class RepositoryInjector {
  @Register.factory(ItemRepository, resolvers: {Dio: 'EdenClient'})
  @Register.factory(PlayerRepository, resolvers: {Dio: 'EdenClient'})
  void configure();
}
