import 'package:flutter/material.dart';

import './categories_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              titleTextStyle: const TextStyle(
                fontSize: 20,
                fontFamily: 'MPLUSRounded1c',
                fontWeight: FontWeight.w500,
              ),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
              bodySmall: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
              titleMedium: const TextStyle(
                fontSize: 24,
                fontFamily: 'MPLUSRounded1c',
                fontWeight: FontWeight.w700,
              ),
            ),
      ),
      home: const CategoriesPage(),
    );
  }
}
