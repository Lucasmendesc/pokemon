import 'package:mobx/mobx.dart';
import 'package:tester/app/modules/home/model/pokemon_data_model.dart';
part 'pokemon_model.g.dart';

class PokemonModel = PokemonModelBase with _$PokemonModel;

abstract class PokemonModelBase with Store {
  final String name;
  final String url;

  @observable
  PokemonDataModel? pokemonDataModel;

  PokemonModelBase({required this.name, required this.url});
}
// class PokemonModel {
//   final String name;
//   final String url;
//   PokemonDataModel? pokemonDataModel;

//   PokemonModel({required this.name, required this.url});
// }
