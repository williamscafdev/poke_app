import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/src/injection.dart';
import 'package:poke_app/src/models/models.dart';
import 'package:poke_app/src/usescases/usescases.dart';

part 'home_state.dart';
part 'home_vm.freezed.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    startGetPokemonsData();
    scrollController.addListener(onScroll);
  }

  HomeState _state = const HomeState.initial();
  HomeState get state => _state;

  int limit = 5;
  int page = 0;

  final scrollController = ScrollController();
  final searchController = TextEditingController();

  FocusNode focusNode = FocusNode();
  List<PokemonData> pokemons = [];
  List<PokemonData> pokemonsSearch = [];
  bool isTotal = false;
  bool _isLoadingPage = false;
  bool get isLoadingPage => _isLoadingPage;
  set isLoadingPage(bool value) {
    _isLoadingPage = value;
    notifyListeners();
  }

  Future<void> startGetPokemonsData() async {
    state.maybeWhen(
      orElse: () {
        _state = const HomeState.loading();
        notifyListeners();
      },
    );
    await getPokemonsData();
    _state = const HomeState.success();
    notifyListeners();
  }

  Future<void> getPokemonsData() async {
    isLoadingPage = true;
    final failureOrPokemons = await sl<GetPokemonsData>().call(
      limit: limit,
      page: page,
    );

    failureOrPokemons.when(
      left: (l) {
        _state = HomeState.error(l.message);
        notifyListeners();
      },
      right: (pokemonsData) {
        if (pokemonsData.isEmpty) {
          isTotal = true;
        }
        if (page == 0) {
          pokemons = pokemonsData;
        } else {
          pokemons.addAll(pokemonsData);
        }
        pokemonsSearch = pokemons;
        isLoadingPage = false;
        notifyListeners();
      },
    );
  }

  Future<void> onTapFavorite(int id) async {
    final isFavorite = await sl<GetFavoriteById>().call(id: id);
    if (isFavorite) {
      await sl<DeleteFavoriteById>().call(id: id);
    } else {
      await sl<SavedFavoriteById>().call(id: id);
    }
    final index = pokemons.indexWhere((e) => e.id == id);
    if (index == -1) {
      return;
    }
    pokemons[index] = pokemons[index].copyWith(isFavorite: !isFavorite);

    pokemons[index] = pokemonsSearch[index];
    notifyListeners();
  }

  void onUpdateFavorite(PokemonData pokemonData) {
    final index = pokemons.indexWhere((e) => e.id == pokemonData.id);
    if (index == -1) {
      return;
    }
    pokemons[index] = pokemonData;
    pokemonsSearch[index] = pokemonData;
    notifyListeners();
  }

  void searchPokemons() {
    final searchText = searchController.text;
    if (searchText.isEmpty) {
      pokemonsSearch = pokemons;
    } else {
      pokemonsSearch =
          pokemons.where((e) => e.name!.contains(searchText)).toList();
    }
    notifyListeners();
  }

  void onScroll() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      page++;
      getPokemonsData();
    }
  }

  Future<void> onRefresh() async {
    page = 0;
    await getPokemonsData();
  }

  Map<String, Color> colorValidationMap = {
    'black': Colors.black,
    'blue': Colors.blue,
    'brown': Colors.brown,
    'gray': Colors.grey,
    'green': Colors.green,
    'pink': Colors.pink,
    'purple': Colors.purple,
    'red': Colors.red,
    'white': Colors.white,
    'yellow': Colors.yellow,
  };
}
