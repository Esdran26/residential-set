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
    
    Timer(const Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}