import 'package:c11_exan_sun_online/home-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routName,
      routes: {
        HomePage.routName: (context) => const HomePage(),
      },
    );
  }
}
