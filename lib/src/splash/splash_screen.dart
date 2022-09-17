import 'dart:async';

import 'package:flutter/material.dart';
import 'package:residential_set/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'images/tu-conjunto.jpeg',
                height: 100.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logo_splash.png',
                    height: 24.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: const Text(
                      'Grafosoft',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Century Gothic',
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
