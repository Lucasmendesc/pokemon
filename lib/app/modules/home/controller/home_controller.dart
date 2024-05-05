import 'package:mobx/mobx.dart';
import 'package:tester/app/modules/home/model/pokemon_data_model.dart';
import 'package:tester/app/modules/home/model/pokemon_model.dart';
import 'package:tester/app/modules/home/service/home_service.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeService _homeService = HomeService();

  @observable
  PokemonModel? selectedPokemon;

  @observable
  List<PokemonModel> pokemonList = [];

  @action
  Future<void> getPokemon() async {
    pokemonList = await _homeService.getPokemon();
  }

  Future<PokemonDataModel> getPokemonData({required String url}) async {
    return await _homeService.getPokemonData(url: url);
  }
}
