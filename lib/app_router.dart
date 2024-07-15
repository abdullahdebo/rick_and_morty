// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/business_logic/cubit/characters_cubit.dart';
import 'package:movieapp/constants/strings.dart';
import 'package:movieapp/data/models/characters.dart';
import 'package:movieapp/data/repository/characters_repository.dart';
import 'package:movieapp/data/web_services/characters_web_services.dart';
import 'package:movieapp/presentation/widgets/screens/characters_details_screen.dart';
import 'package:movieapp/presentation/widgets/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => charactersCubit,
                  child: CharactersScreen(),
                ));

      case characterDetailsScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
            builder: (_) => CharacterDetailsScreen(
                  character: character,
                ));
    }
  }
}
