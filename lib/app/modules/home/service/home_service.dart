import 'package:tester/app/modules/home/model/pokemon_model.dart';
import 'package:tester/app/modules/home/repository/home_repository.dart';

class HomeService {
  final HomeRepository _homeRepository = HomeRepository();

  Future<List<PokemonModel>> getPokemon() async {
    final response = await _homeRepository.getPokemon();
    List<PokemonModel> pokemon = [];
    for (var item in response['results']) {
      pokemon.add(PokemonModel(name: item['name'], url: item['url']));
    }
    return pokemon;
  }
}
