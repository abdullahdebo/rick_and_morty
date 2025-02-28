import 'package:dio/dio.dart';
import '../../constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      // print(response.data.toString());
      if (response.statusCode! > 100 && response.statusCode! < 300) {
        return response.data!['results'];
      } else {
        return response.data;
      }
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
