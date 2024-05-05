// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonModel on PokemonModelBase, Store {
  late final _$pokemonDataModelAtom =
      Atom(name: 'PokemonModelBase.pokemonDataModel', context: context);

  @override
  PokemonDataModel? get pokemonDataModel {
    _$pokemonDataModelAtom.reportRead();
    return super.pokemonDataModel;
  }

  @override
  set pokemonDataModel(PokemonDataModel? value) {
    _$pokemonDataModelAtom.reportWrite(value, super.pokemonDataModel, () {
      super.pokemonDataModel = value;
    });
  }

  @override
  String toString() {
    return '''
pokemonDataModel: ${pokemonDataModel}
    ''';
  }
}
