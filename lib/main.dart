import 'package:flutter/material.dart';

import './categories_page.dart';
import './config/my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myLightThemeData,
      darkTheme: myDarkThemeData,
      home: const CategoriesPage(),
    );
  }
}
