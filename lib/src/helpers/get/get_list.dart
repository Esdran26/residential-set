import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchList(String urlPath) async {
  List listData = [];
  Uri url = Uri.parse(urlPath);

  final response = await http.get(url);

  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);
    listData.add(jsonData);
  } else {
    listData.add("Ocurrió un error, intentelo más tarde");
  }

  return listData;
}
