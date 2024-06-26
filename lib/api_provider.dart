import 'package:flutter/cupertino.dart';
import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class APIProvider extends ChangeNotifier {
  APIProvider(String url) {
    WidgetsFlutterBinding.ensureInitialized();
    api = Openapi(
        dio: Dio(
          BaseOptions(
            baseUrl: url,
            validateStatus: (status) => status! < 500,
          )),
        serializers: standardSerializers
        );
  }

  late Openapi api;
}