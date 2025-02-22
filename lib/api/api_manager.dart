import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/api/api_Constants.dart';
import 'package:movies/api/end_points.dart';
import 'package:movies/models/genera_response.dart';

// https://yts.mx/api/v2/list_movies.json?genre=action,adventure,animation

class ApiManagers {
  static Future<GeneraResponse?> getGenera() async {
    Uri url = Uri.https(ApiConstants.baseUrl, endPoints.generaApi,
    );
    try {
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return GeneraResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
