import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchPage(String urlPath) async {
  Uri url = Uri.parse(urlPath);

  final response = await http.get(url);

  Map<String, dynamic> dataDetails = {};

  if (response.statusCode == 200) {
    final body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);
    dataDetails.addAll(jsonData);
  }

  return dataDetails;
}
