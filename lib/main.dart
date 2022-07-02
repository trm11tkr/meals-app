import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import './dummy_data.dart';
import './models/meal.dart';
import './pages/category_meals_page.dart';
import './pages/categories_page.dart';
import './pages/meal_detail_page.dart';
import './config/my_theme_data.dart';
import './models/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const CategoriesPage(),
          );
        },
        routes: [
          GoRoute(
              name: 'category_meals',
              path: 'category_meals/:categoryId',
              pageBuilder: (context, state) {
                final category = _category(state.params['categoryId']!);
                return MaterialPage(
                  child: CategoryMealsPage(
                    category: category
                  ),
                );
              },
              routes: [
                GoRoute(
                  name: 'meal_detail',
                  path: 'meal_detail/:mealId',
                  pageBuilder: (context, state) {
                    final Meal meal = _meal( state.params['mealId']!);
                    return MaterialPage(
                      child: MealDetailPage(meal: meal),
                    );
                  },
                ),
              ]),
        ],
      ),
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

Category _category(String categoryId) {
  return DUMMY_CATEGORIES.where((category) => category.id == categoryId).first;
}

Meal _meal(String mealId) {
  return DUMMY_MEALS.where((meal) => meal.id == mealId).first;
}
