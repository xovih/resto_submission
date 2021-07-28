import 'dart:convert';

import 'package:resto_app_sora/models/resto_model.dart';
import 'package:http/http.dart' as http;

class RestolistService {
  static final String _baseUrl =
      "https://restaurant-api.dicoding.dev/search?q=";
  static String q = "";

  Future<RestoModel> listResto() async {
    final http.Response response = await http.get(Uri.parse(_baseUrl + q));

    if (response.statusCode == 200) {
      return RestoModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load Resto List");
    }
  }
}
