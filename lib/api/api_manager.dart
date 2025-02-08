import 'dart:convert';
import 'package:http/http.dart' as http;

class apiManager {
  static const String baseUrl =
      "https://yts.mx/api/v2/list_movies.json?sort_by=date_added&order_by=desc";

  Future<List<dynamic>> fetchMovies() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final decodeDate = json.decode(response.body);
      print('decodeDate');
      return decodeDate['date']['movies'] ?? [];
    } else {
      throw Exception('something happened');
    }
  }
}
