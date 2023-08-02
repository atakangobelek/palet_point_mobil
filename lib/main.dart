import 'package:flutter/material.dart';
import 'package:satta_mobil/utils/routes.dart';
import 'package:satta_mobil/view/splash_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}


