import 'package:tester/app/modules/home/model/pokemon_model.dart';
import 'package:tester/app/modules/home/service/home_service.dart';

class HomeController {
  final HomeService _homeService = HomeService();

  Future<List<PokemonModel>> getPokemon() async {
    return await _homeService.getPokemon();
  }
}
