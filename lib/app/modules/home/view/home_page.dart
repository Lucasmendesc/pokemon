import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tester/app/modules/home/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  final HomeController _homeController = HomeController();

  @override
  void initState() {
    _homeController.getPokemonWithPokemonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Observer(builder: (context) {
              return ListView.builder(
                itemCount: _homeController.pokemonList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(_homeController.pokemonList[index].name),
                      Image.network(_homeController
                              .pokemonList[index].pokemonDataModel?.image ??
                          ""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Height: ${_homeController.pokemonList[index].pokemonDataModel?.height ?? ""}"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                              "Weight: ${_homeController.pokemonList[index].pokemonDataModel?.weight ?? ""}")
                        ],
                      )
                    ],
                  );
                },
              );
            }),
          ),
          // Observer(builder: (context) {
          //   if (_homeController.selectedPokemon != null &&
          //       _homeController.selectedPokemon?.pokemonDataModel != null) {
          //     return Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(_homeController.selectedPokemon?.name ?? ""),
          //         SizedBox(
          //           child: Image.network(_homeController
          //                   .selectedPokemon?.pokemonDataModel?.image ??
          //               ""),
          //         ),
          //         Row(
          //           children: [
          //             Text(
          //                 "Height: ${_homeController.selectedPokemon?.pokemonDataModel?.height ?? ""}"),
          //             const SizedBox(
          //               width: 10,
          //             ),
          //             Text(
          //                 "Weight: ${_homeController.selectedPokemon?.pokemonDataModel?.weight ?? ""}")
          //           ],
          //         )
          //       ],
          //     );
          //   }
          //   return const SizedBox.shrink();
          // })
        ],
      ),
    );
  }
}
