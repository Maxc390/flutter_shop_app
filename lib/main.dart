import 'package:flutter/material.dart';
import 'package:shop_app_flutter/home_page.dart';
// import 'package:shop_app_flutter/product_details_page.dart';
// import './global_variables.dart';

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
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1))),
      // home: ProductDetailsPage(
      //   product: products[0],
      // ),
      home: const HomePage(),
    );
  }
}
