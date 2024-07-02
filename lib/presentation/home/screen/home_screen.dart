import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/presentation/home/screen/vm/home_vm.dart';
import 'package:poke_app/presentation/home/widgets/widgets.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (BuildContext screenContext) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (_, HomeViewModel viewModel, __) => Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(AssetsApp.user.path),
              ),
            ],
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: padSy16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleData(),
                  gap16,
                  SearchInput(
                    onChanged: (_) {
                      viewModel.searchPokemons();
                    },
                    controller: viewModel.searchController,
                  ),
                  gap32,
                  _buildPokemons(viewModel, context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPokemons(HomeViewModel viewModel, BuildContext context) {
    return viewModel.state.map(
      loading: (_) => Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 2.5,
          ),
          child: const CircularProgressIndicator(),
        ),
      ),
      initial: (_) => const Center(child: Text('No se encontraron pokemons')),
      success: (_) => Pokemons(
        onTapFavorite: viewModel.onTapFavorite,
        isLoadingPage: viewModel.isLoadingPage,
        pokemons: viewModel.pokemonsSearch,
        onRefresh: viewModel.onRefresh,
        scrollController: viewModel.scrollController,
        isTotal: viewModel.isTotal,
        searchText: viewModel.searchController.text,
        onUpdateFavorite: viewModel.onUpdateFavorite,
      ),
      error: (message) => Center(child: Text(message.message!)),
    );
  }
}
