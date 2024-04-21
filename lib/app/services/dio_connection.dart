import 'package:dio/dio.dart';

class DioConnection {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2/',
    ),
  );
}
