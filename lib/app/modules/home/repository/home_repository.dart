import 'package:tester/app/services/dio_connection.dart';

class HomeRepository {
  final DioConnection dioConnection = DioConnection();

  Future getPokemon() async {
    final response = await dioConnection.dio.get('pokemon');
    print(response);
    return response.data;
  }
}
