import 'package:tester/app/modules/home/model/pokemon_data_model.dart';
import 'package:tester/app/modules/home/model/pokemon_model.dart';
import 'package:tester/app/modules/home/service/home_service.dart';

class HomeController {
  final HomeService _homeService = HomeService();

  PokemonModel? selectedPokemon;

  Future<List<PokemonModel>> getPokemon() async {
    return await _homeService.getPokemon();
  }

  Future<PokemonDataModel> getPokemonData({required String url}) async {
    return await _homeService.getPokemonData(url: url);
  }
}
