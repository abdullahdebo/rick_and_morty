import '../models/characters.dart';
import '../web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();

    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
