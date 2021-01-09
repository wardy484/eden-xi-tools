import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/status/entities/status.dart';
import 'package:eden_xi_tools/eden/status/entities/yell/yell.dart';

import 'package:flutter/material.dart';

class StatusRepository {
  final Dio client;

  StatusRepository({@required this.client});

  Future<Status> get() async {
    final response = await client.get('misc/status');

    return Status(online: response.statusCode == 200);
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
