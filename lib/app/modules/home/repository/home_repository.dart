import 'package:tester/app/services/dio_connection.dart';

class HomeRepository {
  final DioConnection dioConnection = DioConnection();

  Future getPokemon() async {
    final response = await dioConnection.dio.get('pokemon');
    return response.data;
  }

  Future getPokemonData({required String pokemonId}) async {
    final response = await dioConnection.dio.get('pokemon/$pokemonId');
    return response.data;
  }
}
