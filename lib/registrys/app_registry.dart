import 'package:eden_xi_tools/eden/status/repository/status_repository.dart';
import 'package:eden_xi_tools/registrys/bloc_registry.dart';
import 'package:eden_xi_tools/registrys/repository_registry.dart';
import 'package:eden_xi_tools/server_status/bloc/server_status_bloc.dart';
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

    // TODO: Figure out why i have to register this manual
    // Using codegen caused weird exception when starting application

    container.registerFactory(
      (container) => ServerStatusBloc(
        statusRepository:
            StatusRepository(client: container.resolve<Dio>("EdenClient")),
      ),
    );

    container.registerFactory(
      (container) => YellsBloc(
        StatusRepository(client: container.resolve<Dio>("EdenClient")),
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
