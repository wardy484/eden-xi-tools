import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/misc/repository/misc_repository.dart';
import 'package:hooks_riverpod/all.dart';

export "./misc/repository/misc_repository.dart";

final edenClientProvider = Provider<Dio>((ref) {
  Dio dio = Dio();
  dio.options.baseUrl = "https://edenxi.com/api/v1/";
  return dio;
});

final miscRepositoryProvider = Provider<MiscRepository>((ref) {
  return MiscRepository(client: ref.read(edenClientProvider));
});
