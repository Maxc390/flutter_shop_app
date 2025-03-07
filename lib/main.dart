import 'package:flutter/material.dart';
import 'package:shop_app_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          )),
          fontFamily: 'Lato',
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1))),
      home: const HomePage(),
    );
  }
}
