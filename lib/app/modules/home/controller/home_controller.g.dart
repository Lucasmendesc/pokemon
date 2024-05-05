// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$selectedPokemonAtom =
      Atom(name: 'HomeControllerBase.selectedPokemon', context: context);

  @override
  PokemonModel? get selectedPokemon {
    _$selectedPokemonAtom.reportRead();
    return super.selectedPokemon;
  }

  @override
  set selectedPokemon(PokemonModel? value) {
    _$selectedPokemonAtom.reportWrite(value, super.selectedPokemon, () {
      super.selectedPokemon = value;
    });
  }

  late final _$pokemonListAtom =
      Atom(name: 'HomeControllerBase.pokemonList', context: context);

  @override
  List<PokemonModel> get pokemonList {
    _$pokemonListAtom.reportRead();
    return super.pokemonList;
  }

  @override
  set pokemonList(List<PokemonModel> value) {
    _$pokemonListAtom.reportWrite(value, super.pokemonList, () {
      super.pokemonList = value;
    });
  }

  late final _$getPokemonAsyncAction =
      AsyncAction('HomeControllerBase.getPokemon', context: context);

  @override
  Future<void> getPokemon() {
    return _$getPokemonAsyncAction.run(() => super.getPokemon());
  }

  @override
  String toString() {
    return '''
selectedPokemon: ${selectedPokemon},
pokemonList: ${pokemonList}
    ''';
  }
}
