import 'package:eden_xi_tools/eden/misc/repository/misc_repository.dart';
import 'package:eden_xi_tools/registrys/bloc_registry.dart';
import 'package:eden_xi_tools/registrys/repository_registry.dart';
import 'package:eden_xi_tools/yells/bloc/yells_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:dio/dio.dart';

class AppRegistry {
  KiwiContainer container;

  AppRegistry() : container = KiwiContainer();

  register() {
    container.registerFactory((container) => Dio());
    container.registerFactory(
      _edenClientFactory,
      name: 'EdenClient',
    );

    // TODO: Migrate this shit to riverpod providers
    // no real need for any of the generate code this providers.

    container.registerFactory(
      (container) =>
          MiscRepository(client: container.resolve<Dio>("EdenClient")),
    );

    container.registerFactory(
      (container) => YellsBloc(
        MiscRepository(client: container.resolve<Dio>("EdenClient")),
      ),
    );

    RepositoryRegistry().register();
    BlocRegistry().register();
  }

  Dio _edenClientFactory(container) {
    Dio dio = Dio();

    dio.options.baseUrl = "https://edenxi.com/api/v1/";

    return dio;
  }
}
