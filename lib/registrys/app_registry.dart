import 'package:eden_xi_tools/registrys/bloc_registry.dart';
import 'package:eden_xi_tools/registrys/repository_registry.dart';
import 'package:kiwi/kiwi.dart';
import 'package:dio/dio.dart';

class AppRegistry {
  KiwiContainer container;

  AppRegistry() : container = KiwiContainer();

  register() {
    container.registerFactory((container) => Dio());

    RepositoryRegistry().register();
    BlocRegistry().register();
  }
}
