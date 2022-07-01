import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/category_meals_page.dart';

import './categories_page.dart';
import './config/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'category',
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(key: state.pageKey, child:const CategoriesPage());
          },
          routes: [
            GoRoute(
              name: 'category-meals',
              path: 'category_meals',
              builder: (context, state) {
                final String categoryId = state.queryParams['id']!;
                final String categoryTitle = state.queryParams['title']!;
                return CategoryMealsPage(
                  categoryId: categoryId,
                  categoryTitle: categoryTitle,
                );
              },
            ),
          ]),
    ],
    errorBuilder: (context, state) => MaterialApp(
      key: state.pageKey,
      home: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: myLightThemeData,
      darkTheme: myDarkThemeData,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
