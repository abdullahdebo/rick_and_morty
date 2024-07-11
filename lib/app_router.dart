// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:movieapp/constants/strings.dart';
import 'package:movieapp/presentation/widgets/screens/characters_details.dart';
import 'package:movieapp/presentation/widgets/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
