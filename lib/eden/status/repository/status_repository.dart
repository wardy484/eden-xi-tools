import 'package:dio/dio.dart';
import 'package:eden_xi_tools/eden/status/entities/status.dart';

import 'package:flutter/material.dart';

class StatusRepository {
  final Dio client;

  StatusRepository({@required this.client});

  Future<Status> get() async {
    final response = await client.get('misc/status');

    return Status(online: response.statusCode == 200);
  }
}
