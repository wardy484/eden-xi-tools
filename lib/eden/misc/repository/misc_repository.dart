import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/misc/entities/status/status.dart';
import 'package:eden_xi_tools/eden/misc/entities/yell/yell.dart';

import 'package:flutter/material.dart';

class MiscRepository {
  final Dio client;

  MiscRepository({@required this.client});

  Future<Status> get() async {
    final response = await client.get('misc/status');

    print(int.parse(response.data).toString());
    return Status(
      online: response.statusCode == 200,
      players: int.parse(response.data),
    );
  }

  Future<List<Yell>> getYells() async {
    final response = await client.get('misc/yells');

    if (response.statusCode == 200) {
      return response.data.map<Yell>((item) {
        return Yell.fromJson(item);
      }).toList();
    } else {
      throw Exception(
        "Erroring fetching yells from Eden server.",
      );
    }
  }
}
