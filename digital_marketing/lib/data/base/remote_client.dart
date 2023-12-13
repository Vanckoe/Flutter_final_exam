import 'package:digital_marketing/core/data/remote_request_type.dart';

abstract class RemoteClient {
  Future<Map<String,dynamic>> request({
    required String url,
    required RemoteRequestType method,
    Map<String, dynamic>? body,
  });
}