import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tester/app/modules/home/controller/home_controller.dart';
import 'package:tester/app/modules/home/model/pokemon_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  final HomeController _homeController = HomeController();

  @override
  void initState() {
    _homeController.getPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuildou');
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Observer(builder: (context) {
              print('rebuildou a lista');
              return ListView.builder(
                itemCount: _homeController.pokemonList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_homeController.pokemonList[index].name),
                    onTap: () async {
                      _homeController.selectedPokemon =
                          _homeController.pokemonList[index];
                      _homeController.selectedPokemon?.pokemonDataModel =
                          await _homeController.getPokemonData(
                              url: _homeController.pokemonList[index].url);
                    },
                  );
                },
              );
            }),
          ),
          Observer(builder: (context) {
            if (_homeController.selectedPokemon != null &&
                _homeController.selectedPokemon?.pokemonDataModel != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_homeController.selectedPokemon?.name ?? ""),
                  SizedBox(
                    child: Image.network(_homeController
                            .selectedPokemon?.pokemonDataModel?.image ??
                        ""),
                  ),
                  Row(
                    children: [
                      Text(
                          "Height: ${_homeController.selectedPokemon?.pokemonDataModel?.height ?? ""}"),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          "Weight: ${_homeController.selectedPokemon?.pokemonDataModel?.weight ?? ""}")
                    ],
                  )
                ],
              );
            }
            return const SizedBox.shrink();
          })
        ],
      ),
    );
  }
}
