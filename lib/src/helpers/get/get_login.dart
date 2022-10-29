import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:residential_set/src/global/variables.dart';

Future<void> fetchLogin(BuildContext context, String allContent) async {
  final response = await http
      .get(Uri.parse('$apiType/api/v1/users/oauth?accesstoken=$allContent'));

  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);

    if (jsonData['oauthState'] == '1') {
      // ignore: use_build_context_synchronously
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => CompanyList(jsonData, allContent)));
    } else {
      var snackBar = SnackBar(
        content: Text(
          'Correo y/o contraseña incorrectos',
          style: TextStyle(color: primaryColor),
        ),
        backgroundColor: (CupertinoColors.darkBackgroundGray),
      );
      // ignore: use_build_context_synchronously
      // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  } else {
    var snackBar = SnackBar(
      content: Text(
        'Correo y/o contraseña incorrectos',
        style: TextStyle(color: primaryColor),
      ),
      backgroundColor: (CupertinoColors.darkBackgroundGray),
    );
    // ignore: use_build_context_synchronously
    // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
