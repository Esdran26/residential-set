import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:residential_set/src/global/variables.dart';

// Custom Imports

Future<Map<String, dynamic>> fetchProfilePage(String apiKey) async {
  Uri url = Uri.parse('$apiType/api/v1/users/$apiKey?apikey=$apiKey');

  final response = await http.get(url);

  Map<String, dynamic> profileDetails = {};

  if (response.statusCode == 200) {
    final body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);
    profileDetails.addAll(jsonData);
  }

  return profileDetails;
}
