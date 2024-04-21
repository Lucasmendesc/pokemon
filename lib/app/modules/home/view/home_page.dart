import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tester/app/modules/home/controller/home_controller.dart';
import 'package:tester/app/modules/home/model/pokemon_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  final HomeController _homeController = HomeController();
  late final Future<List<PokemonModel>> pokemonList;

  @override
  void initState() {
    pokemonList = _homeController.getPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: FutureBuilder(
              future: _homeController.getPokemon(),
              builder: ((context, snapshot) {
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: InkWell(
                            onTap: () async {
                              _homeController.selectedPokemon =
                                  snapshot.data?[index];
                              _homeController
                                      .selectedPokemon?.pokemonDataModel =
                                  await _homeController.getPokemonData(
                                      url: snapshot.data?[index].url ?? "");
                              setState(() {});
                            },
                            child: Text(snapshot.data?[index].name ?? "")),
                      );
                    });
              }),
            ),
          ),
          if (_homeController.selectedPokemon != null) ...[
            Column(
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
            ),
          ]
        ],
      ),
    );
  }
}
