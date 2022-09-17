import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu Conjunto',
      theme: ThemeData(
          primaryColor: primaryColor,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.indigoAccent)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/':(context) => const SplashScreen()},
    );
  }
}
